package com.ict.model;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;

public class Cart_updateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		int m_idx = Integer.parseInt(request.getParameter("m_idx"));
		int p_idx = Integer.parseInt(request.getParameter("p_idx"));
		int su = Integer.parseInt(request.getParameter("su"));
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("m_idx", m_idx);
		map.put("p_idx", p_idx);
		map.put("su", su);
		
		DAO.getCart_update(map);
		
		return "MyController?cmd=showCart";
	}

}
