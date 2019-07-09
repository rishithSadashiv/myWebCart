package com.cruds.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.cruds.db.DBConnectionManager;
import com.cruds.db.WebcartDAO;
import com.cruds.entity.Consumer;
import com.cruds.entity.Order;
import com.cruds.entity.OrderItem;

public class WebTest {

	@Test
	public void testConnection() {
		Connection conn = DBConnectionManager.getConnection();
		assertNotNull(conn);
	}
	
	@Test
	public void testCreate()
	{
		WebcartDAO dao = new WebcartDAO();
		assertFalse(dao.addConsumer(new Consumer("a", "b", "c", "d", "e")));
	}
	
	@Test
	public void testValidateUserLogin()
	{
		WebcartDAO dao = new WebcartDAO();
		assertTrue(dao.validateUserLogin("r", "r"));
	}

	@Test
	public void testGetOrderDetails()
	{
		WebcartDAO dao = new WebcartDAO();
		List<Order> o,s = new ArrayList<>();
		o = dao.getOrderDetails("r");
		s = dao.getOrderDetails("hjfvfc,sjfvwlhj");
		assertTrue(!o.isEmpty());
		assertTrue(s.isEmpty());
	}
	
	@Test
	public void testGetOrderItems()
	{
		WebcartDAO dao = new WebcartDAO();
		List<OrderItem> o,s = new ArrayList<>();
		o = dao.getOrderItems(1);
		s = dao.getOrderItems(0);
		assertTrue(!o.isEmpty());
		assertTrue(s.isEmpty());
	}
}
