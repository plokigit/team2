package com.ict.db;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class DAO {
	private static SqlSession ss;

	private synchronized static SqlSession getSession() {
		if (ss == null) {
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}

	public static List<VO> getList(String category) {
		List<VO> list = null;
		list = getSession().selectList("list", category);

		return list;
	}

	public static VO getDetail(String idx) {
		VO vo = null;
		vo = getSession().selectOne("detail", idx);
		return vo;
	}

	public static int getWrite(VO vo) {
		int result = 0;
		result = getSession().insert("write", vo);
		ss.commit();

		return result;
	}

	public static int getUpdate(VO vo) {
		int result = 0;
		result = getSession().update("update", vo);
		ss.commit();

		return result;
	}

	public static int getComment_delete_all(String b_idx) { // 원글 밑의 댓글 모두 삭제
		int result = 0;
		result = getSession().delete("reply_delete_all", b_idx);
		ss.commit();

		return result;
	}

	public static int getDelete(VO vo) {
		int result = 0;
		result = getSession().delete("delete", vo);
		ss.commit();

		return result;
	}

	public static int getHitUp(String idx) {
		int result = 0;
		result = getSession().update("hitup", idx);
		ss.commit();

		return result;
	}


	public static int getComment_delete(String c_idx) {
		int result = 0;
		result = getSession().delete("reply_delete", c_idx);
		ss.commit();

		return result;
	}

	public static int getCount() {
		int result = 0;
		result = getSession().selectOne("count");

		return result;
	}

	public static int getLevUp(Map<String, Integer> map) {
		int result = 0;
		result = getSession().update("levup", map);
		ss.commit();

		return result;
	}

	public static int getReply_write(VO vo_ins) {
		int result = 0;
		result = getSession().insert("reply_write", vo_ins);
		ss.commit();

		return result;
	}

	public static MVO getLogin(MVO mvo) {
		MVO mvo2 = null;
		mvo2 = getSession().selectOne("login", mvo);

		return mvo2;
	}

	public static int getProduct_write(VO vo) {
		int result = 0;
		result = getSession().insert("product_write", vo);
		ss.commit();

		return result;
	}

	public static int getCart_write(CVO cvo) {
		int result = 0;
		result = getSession().insert("cart_write", cvo);
		ss.commit();

		return result;
	}

	public static List<VO> getCart_list(String m_idx) {
		List<VO> list = null;
		list = getSession().selectList("cart_list", m_idx);

		return list;
	}

	public static int getCart_plus(String p_idx) {
		int result = 0;
		result = getSession().update("cart_plus", p_idx);
		ss.commit();

		return result;
	}

	public static List<VO> getQuant(CVO cvo) {
		List<VO> list = null;
		list = getSession().selectList("read_quant", cvo);

		return list;
	}
	
	public static int getCart_update(Map<String, Integer> map) {
		int result = 0;
		result = getSession().update("cart_update", map);
		ss.commit();

		return result;
	}

	public static int getCart_delete(CVO cvo) {
		int result = 0;
		result = getSession().delete("cart_delete", cvo);
		ss.commit();

		return result;
	}

}