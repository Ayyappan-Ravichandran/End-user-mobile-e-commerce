package com.cognizant.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.cognizant.model.Cart;
import com.cognizant.model.Orders;
import com.cognizant.model.Mobiles;
import com.cognizant.service.MainService;

@Controller
public class MainController {

	@Autowired
	private MainService service;

	// welcome page

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String WelcomPage(ModelMap model) {
		return "welcome";
	}

	// admin login page

	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public String AdminLoginPage(ModelMap model) {
		return "adminlogin";
	}

	// admin login validate

	@RequestMapping(value = "/adminvalidate", method = RequestMethod.POST)
	public String AdminValidation(ModelMap model, @RequestParam String adminname, @RequestParam String password) {
		if (service.AdminValidate(adminname, password)) {
			if (service.getorders().isEmpty()) {
				model.put("message", " No Orders Found");
			}
			model.addAttribute("adminorders", service.getorders());
			return "adminhome";
		}
		model.put("errorMessage", "Enter Valid Password");
		return "adminlogin";
	}

	// admin home page

	@RequestMapping(value = "/adminorders", method = RequestMethod.GET)
	public String AdminHome(ModelMap model) {
		if (service.getorders().isEmpty()) {
			model.put("message", "No orders found");
		} else {
			model.addAttribute("adminorders", service.getorders());
		}
		return "adminhome";

	}

	// admin search mobile list

	@RequestMapping(value = "/mobilelist", method = RequestMethod.GET)
	public String AdminMobileList(ModelMap model) {
		model.addAttribute("mobiles", service.getMobiles());
		return "mobilelist";
	}

	// admin orders

	@RequestMapping(value = "/adminorders", method = RequestMethod.POST)
	public String AdminGetOrdersPage(ModelMap model) {
		if (service.getorders().isEmpty()) {
			model.put("message", "No orders found");
		} else {
			model.addAttribute("adminorders", service.getorders());
		}
		return "adminhome";
	}

	// search mobiles by id

	@RequestMapping(value = "/searchid", method = RequestMethod.POST)
	public String AdminSearchMobileById(ModelMap model, @RequestParam int search) {
		List<Mobiles> list = service.getMobiles();
		List<Mobiles> list1 = new ArrayList<>();
		for (Mobiles mobile : list) {
			if (mobile.getId() == (search)) {
				list1.add(mobile);

			}
			model.addAttribute("mobiles", list1);
		}

		return "mobilelist";
	}

	// search orders by id

	@RequestMapping(value = "/searchorderid", method = RequestMethod.POST)
	public String AdminSearchOrderById(ModelMap model, @RequestParam int search) {
		List<Orders> list = service.getorders();
		List<Orders> list1 = new ArrayList<>();
		for (Orders order : list) {
			if (order.getOrderId() == (search)) {
				list1.add(order);

			}
			model.addAttribute("adminorders", list1);
		}

		return "adminhome";
	}

	// sort order status

	@RequestMapping(value = "/orderstatus", method = RequestMethod.POST)
	public String AdminSortOrderStatus(ModelMap model, @RequestParam String orderstatus) {
		List<Orders> list = service.getorders();
		List<Orders> list1 = new ArrayList<>();
		for (Orders order : list) {
			if (order.getStatus().equalsIgnoreCase(orderstatus)) {
				list1.add(order);
			}
		}
		model.addAttribute("adminorders", list1);
		return "adminhome";
	}
	
	
	// admin InTransit control

	@RequestMapping(value = "/intransit", method = RequestMethod.GET)
	public String AdminInTransitControl(@RequestParam int id, ModelMap model) {
		service.updateMyOrders(id, "In Transit");
		service.updateOrders(id, "In Transit");

		model.addAttribute("adminorders", service.getorders());
		return "adminhome";
	}
	
	// admin deliver control

	@RequestMapping(value = "/delivered", method = RequestMethod.GET)
	public String AdminDeliveryControl(@RequestParam int id, ModelMap model) {
		service.updateOrders(id, "delivered");
		service.updateMyOrders(id, "delivered");
		model.addAttribute("adminorders", service.getorders());
		return "adminhome";
	}
	
	// Customer register

	@RequestMapping(value = "/customerregister", method = RequestMethod.POST)
	public String showRegSuccessPage(@RequestParam String username, @RequestParam String password, ModelMap model) {
		boolean v = service.AddCustomer(username, password);
		if (v) {
			model.put("errorMessage", "SignUp Success..");
			return "welcome";
		} else {
			model.put("errorMessage", "SignUp Failure..");
			return "welcome";
		}
	}

	// customer login

	@RequestMapping(value = "/customervalidate", method = RequestMethod.POST)
	public String ShowCustomerHomePage(ModelMap model, @RequestParam String username, @RequestParam String password) {
		boolean customervalid = service.CustomerValidate(username, password);
		if (customervalid) {
			model.addAttribute("latestmobiles", service.getLatestMobiles());
			model.addAttribute("mobiles", service.getMobiles());
			return "home";
		} else {
			model.put("errorMessage", "Enter Valid Credentials");
			return "welcome";
		}
	}

	// user home page

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String ShowCustomerGetHomePage(ModelMap model) {
		model.addAttribute("latestmobiles", service.getLatestMobiles());
		model.addAttribute("mobiles", service.getMobiles());

		return "home";
	}

	// filter page

	@RequestMapping(value = "/filters", method = RequestMethod.GET)
	public String ShowFilterPage(ModelMap model) {
		model.addAttribute("mobiles", service.getMobiles());
		return "filter";
	}

	// sort the mobiles in filter page

	@RequestMapping(value = "/sort", method = RequestMethod.POST)
	public String ShowSortedList(ModelMap model, @RequestParam String company, @RequestParam String RAM,
			@RequestParam String ROM) {
		List<Mobiles> list = service.getMobiles();
		List<Mobiles> list1 = new ArrayList<>();
		for (Mobiles mobile : list) {
			if (mobile.getCompany().equalsIgnoreCase(company) || mobile.getRAM().equalsIgnoreCase(RAM)
					|| mobile.getROM().equalsIgnoreCase(ROM)) {
				list1.add(mobile);
			}
		}
		model.addAttribute("mobiles", list1);
		return "filter";
	}

	// sort the company vize mobiles in home page

	@RequestMapping(value = "/sortmobile", method = RequestMethod.POST)
	public String SortMobilByCompanyName(ModelMap model, @RequestParam String company) {
		List<Mobiles> list = service.getMobiles();
		List<Mobiles> list1 = new ArrayList<>();
		for (Mobiles mobile : list) {
			if (mobile.getCompany().equalsIgnoreCase(company)) {
				list1.add(mobile);
			}
		}
		model.addAttribute("latestmobiles", service.getLatestMobiles());
		model.addAttribute("mobiles", list1);
		return "home";
	}

	// view single mobile page

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String ViewMobileBySinglePage(int id, ModelMap modelMap) {
		Mobiles mobiles = service.getMobiles(id);
		Cart cart = new Cart(mobiles.getId(), 0);
		modelMap.put("mobiles", mobiles);
		modelMap.put("cart", cart);
		return "viewmobile";
	}
	
	

	// view single mobile process the page

	@RequestMapping(value = "/view", method = RequestMethod.POST)
	public String ViewMobileSuccess(@ModelAttribute("cart") Cart cart, ModelMap model) {
		boolean valid = service.addToCart(cart.getProductid(), cart.getQuantity());
		if (valid) {
			return "cartsuccess";
		} else {

			return "viewmobile";
		}
	}

	// compare the mobile to get compare page by using Addcompare button

	@RequestMapping(value = "/compare", method = RequestMethod.GET)
	public String compare(int id, ModelMap model) {
		Mobiles mobiles = service.getMobiles(id);
		service.addtocompare(mobiles.getId());
		model.addAttribute("mobiles", service.getMobiles());
		List<Orders> list = service.getCompare();
		model.put("compare", list);

		return "compare";
	}

	// go to compare page using nav link

	@RequestMapping(value = "/compares", method = RequestMethod.GET)
	public String showCompare(ModelMap model) {
		if (service.getCompare().isEmpty()) {
			model.put("message", "No compare item founds...");
		} else {
			List<Orders> list = service.getCompare();
			model.put("compare", list);
		}
		return "compare";
	}

	// Remove mobile from compare page

	@RequestMapping("/removecompare")
	public String removeCompare(int productid, ModelMap model) {
		service.removeFromCompare(productid);
		List<Orders> list = service.getCompare();
		model.put("compare", list);

		return "compare";
	}

	// Go to cart page

	@RequestMapping(value = "/cart")
	public String showCart(ModelMap model) {
		if (service.getCart().isEmpty()) {
			model.put("message", "No cart item founds...");
		} else {
			List<Orders> list = service.getCart();
			double total = service.getTotal();
			model.put("cart", list);
			model.put("total", total);
		}
		return "cart";
	}

	// remove from cart

	@RequestMapping("/remove")
	public String removeCart(int productid, ModelMap modelMap) {
		service.removeFromCart(productid);
		List<Orders> list = service.getCart();
		double total = service.getTotal();
		modelMap.put("cart", list);
		modelMap.put("total", total);
		return "cart";
	}

	// Go to payment page

	@RequestMapping("/paymentpage")
	public String showPaymentPage(ModelMap model) throws SQLException {
		List<Orders> list = service.getCart();
		double total = service.getTotal();
		model.put("cart", list);
		model.put("total", total);

		return "paymentpage";
	}
	
	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public String BuyMobile(int id, ModelMap modelMap) {
		Mobiles mobiles = service.getMobiles(id);
	    modelMap.put("mobiles", mobiles);		
		return "paymentpage";
	}

	
	
	

	// payment process result

	@RequestMapping(value = "/payment", method = RequestMethod.POST)
	public String addorders(@RequestParam String username, @RequestParam String email, @RequestParam String address,
			@RequestParam String city, @RequestParam String state, @RequestParam String pincode, ModelMap modelMap)
			throws SQLException {
		service.updateOrders(service.getCartMobiles(), username, email, address, city, state, pincode);
		service.updateMyOrders(service.getCartMobiles(), username, email, address, city, state, pincode);
		return "paysuccess";
	}

	// customer order list

	@RequestMapping(value = "/myorders")
	public String showMyorderspage(ModelMap model) {
		if (service.getMyorders().isEmpty()) {
			model.put("message", "No orders found...");
		} else {
			List<Orders> li = service.getMyorders();
			model.put("orders", li);
		}
		return "myorders";
	}

	// customer cancel order

	@RequestMapping(value = "/cancel")
	public String showOrderCancelpage(ModelMap model, @RequestParam int id) {
		service.updateMyOrders(id, "cancelled");
		service.updateOrders(id, "cancelled");

		List<Orders> li = service.getMyorders();
		model.put("orders", li);

		return "myorders";
	}

	// customer delete order from the page

	@RequestMapping(value = "/delete")
	public String showOrderDeletepage(ModelMap model, @RequestParam int id) {
		service.dropMyOrders(id);
		List<Orders> li = service.getMyorders();
		model.put("orders", li);
		return "myorders";
	}

	// logout page
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutpage(ModelMap model) {
		return "welcome";
	}

}