package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CVO;
import com.ict.db.DAO;

public class Cart_deleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		int m_idx = Integer.parseInt(request.getParameter("m_idx"));
		int p_idx = Integer.parseInt(request.getParameter("p_idx"));
		
		CVO cvo = new CVO();
		
		cvo.setM_idx(m_idx);
		cvo.setP_idx(p_idx);
		
		DAO.getCart_delete(cvo);
		
		return "MyController?cmd=showCart";
	}

}
