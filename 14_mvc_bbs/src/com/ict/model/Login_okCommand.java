package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;

public class Login_okCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pw");
		BVO bvo = new BVO();
		bvo.setWriter(id);
		bvo.setPwd(pwd);
		bvo = DAO.getLogIn(bvo);
		
		request.setAttribute("bvo", bvo);
		request.getSession().setAttribute("bvo", bvo);
		
		if(bvo!=null) {
			request.getSession().setAttribute("id", bvo.getWriter());
			request.getSession().setAttribute("pw", bvo.getPwd());
			return "MyController?cmd=list&cPage=1";
		}
		
		int fail=1;
		request.setAttribute("fail", fail);
		return "MyController?cmd=login";
	}
}
