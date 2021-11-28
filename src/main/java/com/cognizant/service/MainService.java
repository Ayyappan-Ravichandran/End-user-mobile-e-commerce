package com.cognizant.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import com.cognizant.model.Orders;
import com.cognizant.model.Mobiles;

@Service
public class MainService {

	Connection connection;

	private String cus_id;

	public String getCus_id() {
		return cus_id;
	}

	public void setCus_id(String cus_id) {
		this.cus_id = cus_id;
	}

	// validate admin username password

	public boolean AdminValidate(String adminname, String password) {
		try {
			connection = MainConnection.getConnection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery("select * from admin");
			while (rs.next()) {
				String adname = rs.getString(2);
				String pswd = rs.getString(3);
				if ((adname.equals(adminname)) && (pswd.equals(password))) {
					return true;
				}
			}
			connection.close();
		} catch (Exception e) {
			System.out.println("admin Login Failed");
		}
		return false;
	}

	// register customer

	public boolean AddCustomer(String username, String password) {
		try {
			connection = MainConnection.getConnection();
			PreparedStatement st = connection.prepareStatement("INSERT INTO customer" + " (username,password) VALUES " + "(?,?);");
			st.setString(1, username);
			st.setString(2, password);
			st.executeUpdate();
			st.close();
			connection.close();
			return true;
		} catch (Exception e) {
			System.out.println("Registration Failes");
			return false;
		}
	}

	// validate customer

	public boolean CustomerValidate(String username, String password) {
		try {
			setCus_id(username);
			connection = MainConnection.getConnection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery("select * from customer");
			while (rs.next()) {
				String user = rs.getString(2);
				String pswd = rs.getString(3);
				if ((user.equals(username)) && (pswd.equals(password))) {
					return true;
				}
			}
			connection.close();
		} catch (Exception e) {
			System.out.println("Login Failed");
		}
		return false;
	}

	// get all mobile list

	public List<Mobiles> getMobiles() {
		try {
			List<Mobiles> mobiles = new ArrayList<Mobiles>();

			connection = MainConnection.getConnection();
			Statement st = connection.createStatement();
			ResultSet myRs = st.executeQuery("select * from mobiles");
			while (myRs.next()) {
				Mobiles cust = new Mobiles(myRs.getInt("id"), myRs.getString("company"), myRs.getString("brand"),
						myRs.getString("photo"), myRs.getString("photo1"), myRs.getString("photo2"),
						myRs.getString("RAM"), myRs.getString("ROM"), myRs.getString("OS"), myRs.getLong("price"));
				mobiles.add(cust);
			}
			connection.close();
			return mobiles;
		} catch (Exception e) {
			System.out.println("mobiles list Failed");
		}
		return null;
	}
	
	
	// get all latest mobile list

	public List<Mobiles> getLatestMobiles() {
		try {
			List<Mobiles> latestmobiles = new ArrayList<Mobiles>();

			connection = MainConnection.getConnection();
			Statement st = connection.createStatement();
			ResultSet myRs = st.executeQuery("select * from latestmobiles");
			while (myRs.next()) {
				Mobiles cust = new Mobiles(myRs.getInt("id"), myRs.getString("company"), myRs.getString("brand"),
						myRs.getString("photo"), myRs.getString("photo1"), myRs.getString("photo2"),
						myRs.getString("RAM"), myRs.getString("ROM"), myRs.getString("OS"), myRs.getLong("price"));
				latestmobiles.add(cust);
			}
			connection.close();
			return latestmobiles;
		} catch (Exception e) {
			System.out.println("latestmobiles list Failed");
		}
		return null;
	}

	// get all mobiles by id

	public Mobiles getMobiles(int id) {
		Mobiles Mobiles = new Mobiles();
		try {
			connection = MainConnection.getConnection();
			PreparedStatement stmt = connection.prepareStatement("select * from mobiles where id=?");
			stmt.setInt(1, id);
			ResultSet myRs = stmt.executeQuery();
			while (myRs.next()) {
				Mobiles = new Mobiles(myRs.getInt("id"), myRs.getString("company"), myRs.getString("brand"),
						myRs.getString("photo"), myRs.getString("photo1"), myRs.getString("photo2"),
						myRs.getString("RAM"), myRs.getString("ROM"), myRs.getString("OS"), myRs.getLong("price"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Mobiles;
	}

	// add to cart

	public boolean addToCart(int id, int quantity) {

		try {
			connection = MainConnection.getConnection();
			PreparedStatement stmt = connection.prepareStatement("insert into cart values(?,?,?)");
			stmt.setInt(1, id);
			stmt.setInt(2, quantity);
			stmt.setString(3, cus_id);

			stmt.executeUpdate();
			stmt.close();
			connection.close();
			return true;
		} catch (Exception e) {
			System.out.println("add to cart Failed");
			return false;
		}
	}
	
	// add to compare

	public boolean addtocompare(int id1) {

		try {
			connection = MainConnection.getConnection();
			PreparedStatement stmt = connection.prepareStatement("insert into compare values(?,?)");
			stmt.setInt(1, id1);
			stmt.setString(2, cus_id);
			stmt.executeUpdate();
			stmt.close();
			connection.close();
			return true;
		} catch (Exception e) {
			System.out.println("add to compare Failed");
			return false;
		}
	}

	// get cart mobiles

	public List<Orders> getCart() {
		List<Orders> list = new ArrayList<>();
		try {
			connection = MainConnection.getConnection();
			PreparedStatement stmt = connection.prepareStatement(
					"select sum(quantity) as quant, product_id from cart where cus_id=? group by product_id");
			stmt.setString(1, cus_id);
			ResultSet myRs = stmt.executeQuery();
			while (myRs.next()) {
				Mobiles mobiles = getMobiles(myRs.getInt("product_id"));
				int quantity = myRs.getInt("quant");
				list.add(new Orders(mobiles, quantity));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// get compare mobiles

	public List<Orders> getCompare() {
		List<Orders> list = new ArrayList<>();
		try {
			connection = MainConnection.getConnection();
			PreparedStatement stmt = connection
					.prepareStatement("select product_id from compare where cus_id=? group by product_id");
			stmt.setString(1, cus_id);
			ResultSet myRs = stmt.executeQuery();
			while (myRs.next()) {
				Mobiles mobiles = getMobiles(myRs.getInt("product_id"));
				list.add(new Orders(mobiles));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// get cart total

	public double getTotal() {
		double total = 0;
		try {
			connection = MainConnection.getConnection();
			PreparedStatement stmt = connection.prepareStatement("select * from cart where cus_id=?");
			stmt.setString(1, cus_id);
			ResultSet myRs = stmt.executeQuery();
			while (myRs.next()) {
				total = total + getMobiles(myRs.getInt("product_id")).getPrice() * myRs.getInt("quantity");
			}
		} catch (Exception e) {
			System.out.println("Get total failed");
		}
		return total;
	}

	// remove cart mobiles

	public void removeFromCart(int id) {
		try {
			connection = MainConnection.getConnection();
			PreparedStatement stmt = connection.prepareStatement("delete from cart where product_id=? and cus_id=?");
			stmt.setInt(1, id);
			stmt.setString(2, cus_id);
			stmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// remove compare mobiles

	public void removeFromCompare(int id) {
		try {
			connection = MainConnection.getConnection();
			PreparedStatement stmt = connection.prepareStatement("delete from compare where product_id=? and cus_id=?");
			stmt.setInt(1, id);
			stmt.setString(2, cus_id);
			stmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// get cart mobiles by customer id

	public List<Orders> getCartMobiles() {

		List<Orders> prod = new ArrayList<Orders>();
		try {
			connection = MainConnection.getConnection();
			PreparedStatement st = connection.prepareStatement("select * from cart where cus_id=?");
			st.setString(1, cus_id);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				Mobiles mobiles = getMobiles(rs.getInt("product_id"));
				int quantity = rs.getInt("quantity");
				prod.add(new Orders(mobiles, quantity));
			}
		} catch (Exception e) {
			System.out.println("get cartmobiles Failed");
		}
		return prod;
	}

	// update cart mobiles

	public void updateOrders(List<Orders> cprod, String username, String email, String address, String city,
			String state, String pincode) {

		try {

			connection = MainConnection.getConnection();
			for (Orders prod : cprod) {
				PreparedStatement st = connection.prepareStatement(
						"insert into orders(product_id,quantity,cus_id,username,email,address,city,state,pincode,status) values(?,?,?,?,?,?,?,?,?,'ordered')");
				st.setInt(1, prod.getMobiles().getId());
				st.setInt(2, prod.getQuantity());
				st.setString(3, cus_id);
				st.setString(4, username);
				st.setString(5, email);
				st.setString(6, address);
				st.setString(7, city);
				st.setString(8, state);
				st.setString(9, pincode);

				st.executeUpdate();
			}
			connection.close();
		} catch (Exception e) {
			System.out.println("update orders Failed");
		}
	}

	// update myorders mobiles
	
	public void updateMyOrders(List<Orders> cprod, String username, String email, String address, String city,
			String state, String pincode) {

		try {

			connection = MainConnection.getConnection();
			for (Orders prod : cprod) {
				PreparedStatement st = connection.prepareStatement(
						"insert into myorders(product_id,quantity,cus_id,username,email,address,city,state,pincode,status) values(?,?,?,?,?,?,?,?,?,'ordered')");
				st.setInt(1, prod.getMobiles().getId());
				st.setInt(2, prod.getQuantity());
				st.setString(3, cus_id);
				st.setString(4, username);
				st.setString(5, email);
				st.setString(6, address);
				st.setString(7, city);
				st.setString(8, state);
				st.setString(9, pincode);

				st.executeUpdate();
			}
			connection.close();
		} catch (Exception e) {
			System.out.println("update myorders Failed");
		}
	}
	
	//remove cartitems
	
	public void dropCart() throws SQLException {
		try {
			connection = MainConnection.getConnection();
			PreparedStatement st = connection.prepareStatement("delete from cart where cus_id=?");
			st.setString(1, cus_id);
			st.execute();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}

	}

	// get my orders

	public List<Orders> getMyorders() {
		List<Orders> l = new ArrayList<Orders>();
		try {

			connection = MainConnection.getConnection();
			PreparedStatement st = connection.prepareStatement("select * from myorders where cus_id=?");
			st.setString(1, cus_id);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				int orderid = rs.getInt(1);
				Mobiles mobiles = getMobiles(rs.getInt("product_id"));
				int quantity = rs.getInt(3);
				String cname = rs.getString(4);
				String status = rs.getString(11);
				l.add(new Orders(mobiles, quantity, orderid, cname, status));
			}

			return l;
		} catch (Exception e) {
			System.out.println("my orders Failed");
		}
		return null;
	}

	// cancel orders

	public void dropMyOrders(int id) {

		try {
			connection = MainConnection.getConnection();
			PreparedStatement st = connection.prepareStatement("delete from myorders where id=?");
			st.setInt(1, id);
			st.executeUpdate();
			connection.close();
		} catch (Exception e) {
			System.out.println("drop myorders Failed");
		}

	}

	// get orders list

	public List<Orders> getorders() {
		List<Orders> l = new ArrayList<Orders>();
		try {

			connection = MainConnection.getConnection();
			PreparedStatement st = connection.prepareStatement("select * from orders");
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				int orderid = rs.getInt(1);
				Mobiles mobiles = getMobiles(rs.getInt("product_id"));
				int quantity = rs.getInt(3);
				String cname = rs.getString(4);
				String username = rs.getString(5);
				String email = rs.getString(6);
				String address = rs.getString(7);
				String city = rs.getString(8);
				String state = rs.getString(9);
				String pincode = rs.getString(10);
				String status = rs.getString(11);
				l.add(new Orders(mobiles, quantity, orderid, cname, username, email, address, city, state,
						pincode, status));
			}

			return l;
		} catch (Exception e) {
			System.out.println("orders Failed");
		}
		return null;
	}
	
	// get myorders list
	
	public List<Orders> getmyorders() {
		List<Orders> l = new ArrayList<Orders>();
		try {

			connection = MainConnection.getConnection();
			PreparedStatement st = connection.prepareStatement("select * from myorders");
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				int orderid = rs.getInt(1);
				Mobiles mobiles = getMobiles(rs.getInt("product_id"));
				int quantity = rs.getInt(3);
				String cname = rs.getString(4);
				String username = rs.getString(5);
				String email = rs.getString(6);
				String address = rs.getString(7);
				String city = rs.getString(8);
				String state = rs.getString(9);
				String pincode = rs.getString(10);
				String status = rs.getString(11);
				l.add(new Orders(mobiles, quantity, orderid, cname, username, email, address, city, state,
						pincode, status));
			}

			return l;
		} catch (Exception e) {
			System.out.println("myorders Failed");
		}
		return null;
	}
	

	// update orders

	public void updateOrders(int id, String status) {

		try {
			connection = MainConnection.getConnection();
			PreparedStatement st = connection.prepareStatement("update orders set status=? where id=?");
			st.setString(1, status);
			st.setInt(2, id);
			st.executeUpdate();
			connection.close();
		} catch (Exception e) {
			System.out.println("update orders Failed");
		}

	}
	
	// update myorders
	
	public void updateMyOrders(int id, String status) {

		try {
			connection = MainConnection.getConnection();
			PreparedStatement st = connection.prepareStatement("update myorders set status=? where id=?");
			st.setString(1, status);
			st.setInt(2, id);
			st.executeUpdate();
			connection.close();
		} catch (Exception e) {
			System.out.println("update myorders Failed");
		}

	}
	
}
