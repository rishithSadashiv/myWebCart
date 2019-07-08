<%@page import="com.cruds.entity.Cart"%>
<%@page import="com.cruds.entity.Product"%>
<%@page import="com.cruds.entity.Order"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Orders</title>
</head>
<body>
	
	<%
		String user = (String)session.getAttribute("USERNAME");
		List<Order> orders = (List<Order>) session.getAttribute("ORDERS");
		int i=1;
	%>
	
	<h1><%=user %>'s previous Order</h1><br/>
	
	
	<a href="index.jsp">Home</a>	<br>
	<br>
	
	<table border="1">
			<thead>
				<tr>
					<td>Sl no.</td>
					<td>Order ID</td>
					<td>Order Date</td>
					<td>Delivery Date</td>
					<td>Sub Total</td>
					<td>Tax</td>
					<td>Grand Total</td>
					<td>Status</td>
				</tr>
			</thead>
	<%
	if(orders!=null)
	{
		for(Order o : orders)
		{
	%>
		<tr>
			<td><%= i%></td>
			<td><a href="OrderItemsServlet?o=<%= o.getOrderId() %>"><%= o.getOrderId() %></a></td>
			<td><%=o.getOrderDate() %></td>
			<td><%=o.getDlvDate() %></td>
			<td><%=o.getSubtotal() %></td>
			<td><%=o.getTax() %></td>
			<td><%=o.getGrandtotal() %></td>
			<td><%=o.getStatus() %></td>
		</tr>
	
	<%
			i+=1;
		}
	}
	%>
		</table><br/>
		
	
	
	
</body>
</html>