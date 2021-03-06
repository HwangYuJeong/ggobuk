package com.hb.guest.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.GuestDao;
import com.hb.model.GuestDto;


@WebServlet("/guest/list.do")
public class Listcontroller extends HttpServlet {
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GuestDao dao;
		ArrayList list=null;
		try{
		dao=new GuestDao();
		list= dao.selectAll();
		}catch(Exception e){
			
		}
		
		request.setAttribute("alist", list);
		request.getRequestDispatcher("list.jsp").forward(request,response);
	}

}
