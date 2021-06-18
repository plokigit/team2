package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.BVO;

public class Join_okCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		
			BVO bvo = new BVO();
			bvo.setWriter(request.getParameter("writer"));
			bvo.setPwd(request.getParameter("pwd"));
			bvo.setHit("0");
			bvo.setSubject("회원 가입을 축하합니다.");

			int result = DAO.getJoin(bvo);
			
			if (result > 0) {
				return "MyController?cmd=login";
			}
		return null;
	}

}
