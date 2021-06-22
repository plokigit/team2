package com.ict.model;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CVO;
import com.ict.db.DAO;
import com.ict.db.VO;

public class Cart_writeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String m_idx = request.getParameter("m_idx");
		String p_idx = request.getParameter("p_idx");

		CVO cvo = new CVO();

		cvo.setM_idx(Integer.parseInt(m_idx));
		cvo.setP_idx(Integer.parseInt(p_idx));

		List<VO> list = DAO.getCart_list(m_idx);
		Iterator<VO> it = list.iterator();

		VO vo = null;
		while (it.hasNext()) {
			VO vo2 = (VO) it.next();
			if (vo2.getIdx().equalsIgnoreCase(p_idx)) {
				vo = vo2;
				break;
			}
		}
		if (vo == null) {
			DAO.getCart_write(cvo);
		} else {
			DAO.getCart_plus(p_idx);
		}

		return "MyController?cmd=onelist&idx=" + p_idx;
	}

}
