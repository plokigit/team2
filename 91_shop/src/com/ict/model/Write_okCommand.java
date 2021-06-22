package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Write_okCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {/*

		try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(request, path, 100 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());
			VO vo = new VO();
			vo.setTitle(mr.getParameter("title"));
			vo.setWriter(mr.getParameter("writer"));
			vo.setContent(mr.getParameter("content"));
			vo.setPwd(mr.getParameter("pwd"));
			vo.setHit("0");
			

			if (mr.getFile("file_name") != null) {
				vo.setFile_name(mr.getFilesystemName("file_name"));
			} else {
				vo.setFile_name("");
			}

			int result = DAO.getWrite(vo);
			if (result > 0) {
				return "MyController?cmd=list";
			}

		} catch (Exception e) {
			System.out.println(e);
		}*/
		return null;
	}

}
