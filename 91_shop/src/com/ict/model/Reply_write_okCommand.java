package com.ict.model;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Reply_write_okCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {/*
		try {
			String path = request.getServletContext().getRealPath("/upload");
			MultipartRequest mr = new MultipartRequest(request, path, 100 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());
			
			VO vo = (VO)request.getSession().getAttribute("vo");
			int groups = Integer.parseInt(vo.getGroups());
			int step = Integer.parseInt(vo.getStep());
			int lev = Integer.parseInt(vo.getLev());
			
			step++;
			lev++;
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("groups", groups);
			map.put("lev", lev);
			
			int result = DAO.getLevUp(map);
			
			VO vo_ins = new VO();
			
			vo_ins.setWriter(mr.getParameter("writer"));
			vo_ins.setTitle(mr.getParameter("title"));
			vo_ins.setContent(mr.getParameter("content"));
			vo_ins.setPwd(mr.getParameter("pwd"));
			vo_ins.setHit("0");
			vo_ins.setGroups(String.valueOf(groups));
			vo_ins.setStep(String.valueOf(step));
			vo_ins.setLev(String.valueOf(lev));
			
			if (mr.getFile("file_name") != null) {
				vo_ins.setFile_name(mr.getFilesystemName("file_name"));
			} else {
				vo_ins.setFile_name("");
			}

			result = DAO.getReply_write(vo_ins);
			if (result > 0) {
				String cPage = request.getParameter("cPage");
				return "MyController?cmd=list&cPage="+cPage;
			}

		} catch (Exception e) {
			System.out.println(e);
		}*/
		return null;
	}

}
