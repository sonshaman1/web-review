package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Location;
import ptithcm.entity.User;

@Transactional
@Controller
@RequestMapping("login")
public class loginController {
	@Autowired
	SessionFactory factory;
	public User login(String username, String password) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			System.out.print(username);
			Query query = session.createQuery("FROM User WHERE Username LIKE :usname AND Password LIKE :pasword");
			query.setParameter("usname", username);
			query.setParameter("pasword", password);
			User obj = (User) query.uniqueResult();//lấy kết quả duy nhất ra
			t.commit();
			return obj;
		} catch (Exception ex) {
			System.out.print(ex.getMessage());
			if (t != null) {
				t.rollback();
			}
		} finally {
			session.flush();
			session.close();
		}
		
		return null;
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String viewlogin(ModelMap model) {
		model.addAttribute("user", new User());
		return "indexLogin";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String dologin(ModelMap model, @ModelAttribute("user") User user, HttpSession session,
			BindingResult errors) {
		if (user.getUsername().trim().length() == 0) {
			errors.rejectValue("username", "user", "Username con trong");
			System.out.print("\n" + "Username errors");
		}
		if (user.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "user", "Password con trong");
			System.out.print("\n" + "Password errors");
		}
		if (errors.hasErrors()) {
			model.addAttribute("message", "Loi dang nhap");
			model.addAttribute("user", new User());
			return "indexLogin";
		} else {
			System.out.print(user.getUsername() + " " + user.getPassword());
			User checkUser = login(user.getUsername(), user.getPassword());
			if (checkUser == null) {
				model.addAttribute("user", new User());
				model.addAttribute("message", "Username hoac Password khong dung");
				return "indexLogin";
			}
			session.setAttribute("user", checkUser);
			return "redirect:/login/index_admin.htm";
		}
		
	}
	
	@RequestMapping("index_admin")
	public String index_admin()
	{
		return "indexAdmin";
	}
	@RequestMapping("location")
	public String index_Location(ModelMap model)
	{
		Session session = factory.getCurrentSession();
		String hql = "FROM 	Location";
		Query query = session.createQuery(hql);
		List<Location> list = query.list();
		model.addAttribute("list", list);
		return "idxadLocation";
	}
	
	@RequestMapping(value = "insert_location", method = RequestMethod.GET)
	public String insert_location(ModelMap model) {
		model.addAttribute("location", new Location());
		return "insert";
	}
	
	@RequestMapping(value = "insert_location", method = RequestMethod.POST)
	public String insert_location(ModelMap model, @ModelAttribute("location") Location location) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			if (((Location) session.get(Location.class, location.getID())) != null) {
				session.merge(location);
				t.commit();
				model.addAttribute("message", "People đã tồn tại và sẽ được thay đổi !");
			} else {
				session.save(location);
				t.commit();
				model.addAttribute("message", "Thêm mới thành công !");
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !\n" + e.toString());
		} finally {
			session.close();
		}
		return "redirect:insert_location.htm";
	}
	
	
	
	@RequestMapping(value = "update_location/{id}", method = RequestMethod.GET)
	public String update_location(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		Location location = (Location) session.get(Location.class, id);
		model.addAttribute("location", location);
		return "updateLocation";
	}

	@RequestMapping(value = "update_location/{id}", method = RequestMethod.POST)
	public String update_people(ModelMap model, @ModelAttribute("location") Location location,
			@PathVariable("id") Integer id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		location.setID(id);
		try {
			session.update(location);
			t.commit();
			model.addAttribute("message", "Sửa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Sửa thất bại !\n" + e.toString());
		} finally {
			session.close();
		}
		return "updateLocation";
	}
	
	@RequestMapping("delete_location/{id}")
	public String delete(@PathVariable("id") Integer id) {
		Session session = factory.openSession();
		Location location = (Location) session.get(Location.class, id);
		Transaction t = session.beginTransaction();
		try {
			session.delete(location);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/login/location.htm";
	}
	
	@RequestMapping("indexEmployee")
	public String index_Employee(ModelMap model)
	{
		Session session = factory.getCurrentSession();
		String hql = "FROM 	User";
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		model.addAttribute("user", list);
		return "indexEmployee";
	}
	
	@RequestMapping(value = "insert_Employee", method = RequestMethod.GET)
	public String insert_employee(ModelMap model) {
		model.addAttribute("employee", new User());
		return "insert_employee";
	}
	
	@RequestMapping(value = "insert_Employee", method = RequestMethod.POST)
	public String insert_employee(ModelMap model, @ModelAttribute("employee") User employee) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			if (((User) session.get(User.class, employee.getUsername())) != null) {
				session.merge(employee);// thêm dữ liệu 
				t.commit();
				model.addAttribute("message", "People đã tồn tại và sẽ được thay đổi !");
			} else {
				session.save(employee);
				t.commit();
				model.addAttribute("message", "Thêm mới thành công !");
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !\n" + e.toString());
		} finally {
			session.close();
		}
		return "redirect:insert_Employee.htm";
	}
	
	@RequestMapping("delete_employee/{Username}")
	public String delete(@PathVariable("Username") String Username) {
		Session session = factory.openSession();
		User employee = (User) session.get(User.class, Username);//sesion.get lấy đối tượng có username ms chọn 
		Transaction t = session.beginTransaction();
		try {
			session.delete(employee);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		return "redirect:/login/indexEmployee.htm";
	}
	
	@RequestMapping(value = "update_employee/{Username}", method = RequestMethod.GET)
	public String update_employee(ModelMap model, @PathVariable("Username") String Username) {
		Session session = factory.getCurrentSession();
		User employee = (User) session.get(User.class, Username);
		model.addAttribute("employee", employee);
		return "updateEmployee";
	}

	@RequestMapping(value = "update_employee/{Username}", method = RequestMethod.POST)
	public String update_employee(ModelMap model, @ModelAttribute("employee") User User,
			@PathVariable("Username") String Username) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(User);
			t.commit();
			model.addAttribute("message", "Sửa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Sửa thất bại !\n" + e.toString());
		} finally {
			session.close();
		}
		return "updateEmployee";
	}
}
