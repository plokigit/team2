package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CVO;
import com.ict.db.DAO;

public class Cart_deleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int m_idx = Integer.parseInt(request.getParameter("m_idx"));
		CVO cvo = new CVO();

		cvo.setM_idx(m_idx);
		try {
			String[] check = request.getParameterValues("check");

			for (int i = 0; i < check.length; i++) {
				cvo.setP_idx(Integer.parseInt(check[i]));
				DAO.getCart_delete(cvo);
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return "MyController?cmd=showCart";
	}

}
/*
 * int m_idx = Integer.parseInt(request.getParameter("m_idx")); int p_idx =
 * Integer.parseInt(request.getParameter("p_idx"));
 * 
 * CVO cvo = new CVO();
 * 
 * cvo.setM_idx(m_idx); DAO.getCart_delete(cvo);
 * 
 * DAO.getCart_delete(cvo);
 * 
 * return "MyController?cmd=showCart";
 */
