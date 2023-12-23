package com.bistroblanc.BistroBlanc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



import jakarta.servlet.http.HttpSession;

@Controller
public class BistroController {

	@Autowired
	ItemsInterRepository it;
	
	@Autowired
	UsersInterRepository ut;
	
	@Autowired
	CartInterRepository ct;
	
	@Autowired
	OrderInterRepository ot;
	
	@RequestMapping("home")
	public String home() 
	{
		return "Home.jsp";
	}
	
	@RequestMapping("about")
	public String about() 
	{
		return "About.jsp";
	}
	@RequestMapping("logout")
	public String logout()
	{
		return "Logout.jsp";
	}
	
	@RequestMapping("signup")
	public String signup()                
	                                         
	{
		return "Signup.jsp";
	}
	
	@RequestMapping("additems")
	public String additems(){
		return "admin/AddItems.jsp";
	}
	
	@RequestMapping("addFoodItems")
	public String addFoodItems(String category,String item_name, String item_description, int votes, int price,
			String img_url) {
		
		items im=new items();
		
		im.setCategory(category);
		im.setItem_name(item_name);
		im.setItem_description(item_description);
		im.setVotes(votes);
		im.setPrice(price);
		im.setImg_url(img_url);
		
		it.save(im);
		
		return "redirect:/allproduct";
	}
	
	@RequestMapping("addUserDetails")
	public String addUserDetails(String name, String mob_no, String email, String password, String country, String city,
			String pincode) {
		
		users ur=new users();    
		ur.setName(name);
		ur.setMob_no(mob_no);
		ur.setEmail(email);
		ur.setPassword(password);
		ur.setCountry(country);
		ur.setCity(city);
		ur.setPincode(pincode);
		
		ut.save(ur);
		
		return "redirect:/home";
		
	}
	
	@RequestMapping("allitems")
	public ModelAndView allitems(ModelMap mp) 
	{
		List<items> li =(List<items>) it.findAllByCategory("Main course");
		mp.put("object",li);
		
		List<items> lf =(List<items>) it.findAllByCategory("Fast Food");
		mp.put("object2",lf);
		
		List<items> lt =(List<items>) it.findAllByCategory("Dessert Items");
		mp.put("object3",lt);
		
		ModelAndView mv=new ModelAndView();
		mv.addAllObjects(mp);
		mv.setViewName("Allitems.jsp");
		return mv;
	}
	
	
	@RequestMapping("singleitem")
	public ModelAndView singleitem(ModelMap mo,int item_id) 
	{
		items i1= it.findById(item_id).get();
		mo.put("object1",i1);
		ModelAndView mv =new ModelAndView();
		mv.addObject(mo);
		mv.setViewName("SingleItem.jsp");
		return mv;
	}
	
	
	@RequestMapping("addcart")
	public ModelAndView addcart(ModelMap mt,String email,int item_id) {
		
		users ur=ut.findByEmail(email);
		items i5=it.findById(item_id).get();
		
		if(i5 !=null) {
		cart c=new cart(i5,ur);
		ct.save(c);
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("cartitems");
		return mv;
	}
	
	//public String check(){
		//yaha ye karna hh ki agar bynow p click krte hi chck kre login h to cart items p aye or nhi hh to login krne ka option khule
	//}
	
	@RequestMapping("checkout")
	public String checkout() {
		return "Checkout.jsp";
	}
	
	
	@RequestMapping("login")
	public ModelAndView loginuser(HttpSession session,String email,String password) {
		
		users u2=ut.findByEmail(email);
		
		if(u2==null) {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("Login.jsp");
			return mv;
		}else{
			if(email.equals("admin@bistroblanc.com")&& u2.getPassword().equals(password)) {
				session.setAttribute("uid", email);
				ModelAndView mv=new ModelAndView();
				mv.setViewName("adminHome");
				return mv;	
			}
			else if(u2.getPassword().equals(password)) {
				int i1=ct.countByCartId(u2.getId());
				ModelAndView mv=new ModelAndView();
				mv.addObject("qty", i1);
				mv.setViewName("home");
				session.setAttribute("uid", email);
				return mv;
			}else {
				ModelAndView mv=new ModelAndView();
				mv.setViewName("Login.jsp");
				return mv;
			}
		}
	}
	
	@RequestMapping("cartitems")
	public ModelAndView cartitems(ModelMap mp ,String email){
		
		users u1=ut.findByEmail(email);
		int id=u1.getId();
		
		mp.put("object4",ct.findAllById_id(id));
		mp.put("user",u1);
		
		ModelAndView mv =new ModelAndView();
		mv.addObject(mp);
		mv.setViewName("CartItems.jsp");
		return mv;	
		
	}
	
	@RequestMapping("adminHome")
	public String adminHome() 
	{
		return "admin/AdminHome.jsp";
	}
	@RequestMapping("adminAbout")
	public String adminAbout() 
	{
		return "admin/About.jsp";
	}
	
	@RequestMapping("registered")
	public  ModelAndView registered(ModelMap mp) 
	{
		mp.put("object",ut.findAll());
		ModelAndView mv= new ModelAndView();
		mv.addAllObjects(mp);
		mv.setViewName("admin/Registered.jsp");
		return mv;
	}
	
	
	@RequestMapping("allproduct")
	public ModelAndView allproduct(ModelMap mp) 
	{
		List<items> li =(List<items>) it.findAllByCategory("Main course");
		mp.put("object",li);
		
		List<items> lf =(List<items>) it.findAllByCategory("Fast Food");
		mp.put("object2",lf);
		
		List<items> lt =(List<items>) it.findAllByCategory("Dessert Items");
		mp.put("object3",lt);
		
		ModelAndView mv=new ModelAndView();
		mv.addAllObjects(mp);
		mv.setViewName("admin/AllProduct.jsp");
		return mv;
	}
	
	@RequestMapping("adminSingle")
	public ModelAndView adminSingle(ModelMap mo,int item_id) 
	{
		items i1= it.findById(item_id).get();
		mo.put("object1",i1);
		ModelAndView mv =new ModelAndView();
		mv.addObject(mo);
		mv.setViewName("admin/AdminSingle.jsp");
		return mv;
	}
	
	@RequestMapping("deleteItem")
	public String deleteItem(int item_id) {
		it.deleteById(item_id);
		return "allproduct";
	}
	
	@RequestMapping("deleteCartItem")
	public String deleteCartItem(int cartId) {
		ct.deleteById(cartId);
		return "home";
	}
	
	@RequestMapping("update")
	public String update(int item_id,ModelMap mp) {
		items im=it.findById(item_id).get();
		mp.put("object", im);
		return "admin/UpdateItems.jsp";
	}
	
	@RequestMapping("updateFoodItems")
	public String updateFoodItems(int item_id,String category,String item_name, String item_description, int votes, int price,
			String img_url) {
		items im=it.findById(item_id).get();
		
		im.setItem_id(item_id);
		im.setCategory(category);
		im.setItem_name(item_name);
		im.setItem_description(item_description);
		im.setVotes(votes);
		im.setPrice(price);
		im.setImg_url(img_url);
		
		it.save(im);
		return "redirect:/allproduct";
	}
	
	
	@RequestMapping("completeOrder")
	public String completeOrder(String email,float total,String tn,String c1,String address) {
		
		String tname="";
		char[] arr=tn.toCharArray();
		for(int i=1;i<arr.length;i++) {
		   tname=tname+arr[i];
		}
		String cid="";
		char[] arr1=c1.toCharArray();
		for(int i=1;i<arr1.length;i++) {
			cid=cid+arr1[i];
		}
		users u1=ut.findByEmail(email);
		Orders o2=new Orders(total,tname,cid,address,u1);
		ot.save(o2);
		String[] array = cid.split(",");
		for(String letter :array) {
			if(letter !="")
			{
				int c=Integer.valueOf(letter);
				ct.deleteById(c);
			}
		}
		return "checkout";
	}
	
	@RequestMapping("bookedOrder")
	public ModelAndView bookedOrder(ModelMap mp) {
		
		mp.put("object",ot.findAll());
		ModelAndView mv= new ModelAndView();
		mv.addAllObjects(mp);
		mv.setViewName("admin/BookedOrder.jsp");
		return mv;
	}
	@RequestMapping("removeOrder")
	public String removeOrder(int orderId) {
		ot.deleteById(orderId);
		return "bookedOrder";
	}
}
