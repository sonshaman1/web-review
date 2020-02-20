package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Location;

@Transactional
@Controller
@RequestMapping("/main/")

public class newsController {
	@Autowired
	SessionFactory factory;
	//lấy hết thông tin trong record
	public List<Location> getListNav(int start, int limit) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Query query = session.createQuery("FROM Location"); //lấy table 
			query.setFirstResult(start); //lấy giá trị bắt đầu page
			query.setMaxResults(limit); //số giá trị lấy tiếp theo
			List<Location> list = query.list(); //gán query thành list
			t.commit(); // đúng hết 4 dòng trên theo thứ tự thì mới làm tiếp k thì quay lại từ đầu (vào catch t.rollback)
			return list;
		} catch (Exception ex) {
			if (t != null) {
				t.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();// đóng session
			session.close();//đốn session
		}
		return null;
	}
	
	//lấy số lượng location
	public int totalItem() {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Query query = session.createQuery("SELECT count(*) FROM Location");
			Long obj = (Long) query.uniqueResult();// trả về tổng location trong database
			t.commit();
			return obj.intValue();// đổi ojb thành kiểu int
		} catch (Exception ex) {
			if (t != null) {
				t.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return 0;
	}
	
	//main
	@RequestMapping(value = "index/{page}", method = RequestMethod.GET)
	public String viewProductListByPage(ModelMap model, @PathVariable("page") int page) {

		int lineCount = 9;
		
		Session session = factory.getCurrentSession();
		
		model.addAttribute("listProduct", getListNav((page - 1) * lineCount, lineCount));
		model.addAttribute("totalPage", (totalItem()%lineCount==0) ? totalItem() / lineCount : totalItem()/lineCount+1);
		model.addAttribute("currentPage", page);
		model.addAttribute("isCate", 0);

		return "index";
	}
	@RequestMapping("info/{id}")
	public String info(@PathVariable("id")int id,ModelMap model) {
		Session session=factory.getCurrentSession();
		Location location=(Location) session.get(Location.class,id);
		model.addAttribute("Location", location);
		return "single";
	}
	
	@RequestMapping("about")
	public String about(ModelMap model)
	{
		return "about";
	}
	
}
