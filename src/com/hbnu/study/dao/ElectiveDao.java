package com.hbnu.study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hbnu.study.bean.Elective;
import com.hbnu.study.bean.Student;
import com.hbnu.study.dao.common.DBUtils;

public class ElectiveDao {

	/**
	 * ���ݵ�¼ѧ�� ����Ϣ��ѯ��ǰ�û���ѡ����Ϣ
	 * @param stu
	 * @return
	 */
	public List<Elective> getElectives(Student stu)
	{
		Connection conn = DBUtils.getConn();
		ResultSet rs=null;
		List<Elective> electives=new ArrayList<Elective>();
		//����(ѧ����,�γ̱�,ѡ����Ϣ��)���ϲ�ѯ
		String sql = "select id ,"+
				 	 "(select course_name from course where id=e.COURSE_ID) as course_name_c,"+
				 	 "(select STU_CLASS from student where id=e.student_id) as class_name_c,"+
				 	 "(select subject from student where id=e.student_id) as subject_name_c,"+
				 	 "TEACHER_NAME "+
				 	 "from ELECTIVE e "+
				 	 "where student_id=?";
		System.out.println("============"+sql);
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			pStatement.setInt(1, stu.getId());
			
			rs = pStatement.executeQuery();
		
			while(rs.next())
			{
				Elective elective=new Elective();
				elective.setId(rs.getInt(1));
				elective.setCourseName(rs.getString(2));
				elective.setClassName(rs.getString(3));
				elective.setSubjectName(rs.getString(4));
				elective.setTeacherName(rs.getString(5));		
				electives.add(elective);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return electives ;
	}

	public int addElective(Elective elective) {
		
		Connection conn = DBUtils.getConn();
		int result = 0;
		String sql = "insert into ELECTIVE(COURSE_ID,STUDENT_ID,TEACHER_SUBJECT,TEACHER_NAME) VALUES(?,?,?,?)";
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			pStatement.setInt(1, elective.getCourseId());
			pStatement.setInt(2, elective.getStudentId());
			pStatement.setString(3, elective.getTeacherSubject());
			pStatement.setString(4, elective.getTeacherName());
			
			result = pStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return result ;
	}
	
	public int deleteElective(Elective elective) {
		
		Connection conn = DBUtils.getConn();
		int result = 0;
		String sql = "delete from ELECTIVE where id=?";
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			pStatement.setInt(1, elective.getId());
			result = pStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return result ;
	}

}
