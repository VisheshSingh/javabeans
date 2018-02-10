package controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.HourlyEmployee;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {

	public EmployeeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get input
		int employeeID = Integer.parseInt(request.getParameter("employeeID"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		double hourlyRate = Double.parseDouble(request.getParameter("hourlyRate"));

		// instantiate hourlyEmployee
		HourlyEmployee emp = new HourlyEmployee(employeeID, firstName, lastName, hourlyRate);

		// creating a map of taxes
		Map<String, String> taxRates = new HashMap<String, String>();
		taxRates.put("Georgia", "6.00");
		taxRates.put("Florida", "4.75");
		taxRates.put("Texas", "8.00");

		// set session attributes
		HttpSession session = request.getSession();
		session.setAttribute("employee", emp);
		session.setAttribute("taxes", taxRates);

		// Set Destination
		RequestDispatcher RD = request.getRequestDispatcher("EMPdemo.jsp");
		RD.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
