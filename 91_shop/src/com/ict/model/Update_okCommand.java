package com.ict.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update_okCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {/*

		try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(request, path, 100 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());

			VO vo2 = (VO) request.getSession().getAttribute("vo");
			VO vo = new VO();
			vo.setIdx(vo2.getIdx());
			vo.setTitle(mr.getParameter("title"));
			vo.setWriter(mr.getParameter("writer"));
			vo.setContent(mr.getParameter("content"));

			if (mr.getFile("file_name") == null) {
				vo.setFile_name(mr.getParameter("old_file_name"));
			} else {
				vo.setFile_name(mr.getFilesystemName("file_name"));
			}

			String old_file_name = mr.getParameter("old_file_name");

			int result = DAO.getUpdate(vo);

			if (result > 0) {
				if (mr.getFile("file_name") != null) {
					try {
						File file = new File(path + "/" + new String(old_file_name.getBytes("utf-8")));
						if (file.exists()) {
							file.delete();
						}
					} catch (Exception e) {
						System.out.println(e);
					}
				}
				String cPage = request.getParameter("cPage");
				return "MyController?cmd=onelist&b_idx=" + vo.getIdx() + "&cPage=" + cPage;
			}

		} catch (Exception e) {
			System.out.println(e);
		}
*/
		return null;
	}

}
