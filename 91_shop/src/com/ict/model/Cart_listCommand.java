package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ict.db.DAO;
import com.ict.db.MVO;
import com.ict.db.VO;

public class Cart_listCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession(true);
		MVO mvo = (MVO) session.getAttribute("mvo");

		List<VO> list = DAO.getCart_list(mvo.getIdx());

		int total = 0;

		for (VO vo : list) {
			total += vo.getQuant() * vo.getP_saleprice();
		}

		request.setAttribute("list", list);
		request.setAttribute("total", total);
		request.setAttribute("list_leng", list.size());

		return "view/viewcart.jsp";
	}

}
