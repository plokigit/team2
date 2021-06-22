package com.ict.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class Delete_okCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {/*
		try {
			
			VO vo = (VO) request.getSession().getAttribute("vo");
			
			int result = DAO.getDelete(vo);
			if (result > 0) {
				String path = request.getServletContext().getRealPath("/upload");
				String file_name = vo.getFile_name();
				if (vo.getFile_name() != null) {
					File file = new File(path + "/" + new String(file_name.getBytes("utf-8")));
					if (file.exists()) {
						file.delete();
					}
				}
				String cPage = request.getParameter("cPage");
				return "MyController?cmd=list&cPage="+cPage;
			}
		} catch (Exception e) {
			System.out.println(e);
		}*/
		return null;
	}

}
