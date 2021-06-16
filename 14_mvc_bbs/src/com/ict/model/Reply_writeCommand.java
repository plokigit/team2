package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.CVO;
import com.ict.db.DAO;

public class Reply_writeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BVO bvo = (BVO) request.getSession().getAttribute("bvo");
		CVO cvo = new CVO();
		cvo.setB_idx(bvo.getB_idx());
		cvo.setContent(request.getParameter("content"));
		
		System.out.println(request.getParameter("content"));
		
		int result = DAO.getReply_write(cvo);
		if(result>0) {
			return "MyController?cmd=onelist&b_idx="+bvo.getB_idx();
		}
		
		return null;
	}

}
