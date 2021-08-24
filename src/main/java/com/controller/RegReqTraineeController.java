package com.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.tRequestStroreDao;
import com.model.Trainee;

/**
 * Servlet implementation class RegReqTraineeController
 */
public class RegReqTraineeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	List<Trainee> lstTrainee;
	
	public void init() {
		lstTrainee=new LinkedList<Trainee>();
	}
       	
	
    public RegReqTraineeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tName = request.getParameter("text2");
		String tEmail = request.getParameter("text3");
		double tMob = Double.parseDouble(request.getParameter("text4"));
		double tAadhar = Double.parseDouble(request.getParameter("text5"));
		String tEduDetails = request.getParameter("text6");
		int tBusinessUnit = Integer.parseInt(request.getParameter("text7"));
		
		Trainee t = new Trainee(tName, tEmail, tMob, tAadhar, tEduDetails, tBusinessUnit);
		
		LinkedList<Trainee> lstTrainee=new LinkedList<Trainee>();
		
		tRequestStroreDao tReqDao = new tRequestStroreDao();
		lstTrainee = tReqDao.storeToTrainee(t);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
