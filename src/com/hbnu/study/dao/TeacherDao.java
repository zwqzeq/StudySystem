package com.hbnu.study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hbnu.study.bean.Teacher;
import com.hbnu.study.dao.common.DBUtils;

public class TeacherDao {

	
	//ÀÏÊ¦½ÇÉ«µÇÂ¼
	public boolean selectForLogin(Teacher tea)
	{
		Connection conn = DBUtils.getConn();
		ResultSet rs=null;
		String sql = "select * from TEACHER where TEACHER_NO=? AND PASSWORD=?";
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			pStatement.setString(1, tea.getTeacherNo());
			pStatement.setString(2, tea.getPassword());	
			rs = pStatement.executeQuery();
			return rs.next()?true:false;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return false ;
	}
}
