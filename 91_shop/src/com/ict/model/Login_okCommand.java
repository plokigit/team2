package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.MVO;

public class Login_okCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		MVO mvo = new MVO();
		mvo.setId(request.getParameter("id"));
		mvo.setPw(request.getParameter("pw"));

		MVO mvo2 = DAO.getLogin(mvo);

		if (mvo2 != null) {
			request.getSession().setAttribute("mvo", mvo2);
			request.getSession().setAttribute("login", "ok");
			
			if(mvo.getId().equalsIgnoreCase("admin")) {
				request.getSession().setAttribute("admin", "ok");
				return "MyController?cmd=admin";
			}
			return "MyController?cmd=list";
		} else {
			return "MyController?cmd=login";
		}
	}

}
