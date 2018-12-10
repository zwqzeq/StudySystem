package com.hbnu.study.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hbnu.study.bean.Student;
import com.hbnu.study.dao.common.DBUtils;

public class StudentDao {

	/**
	 * ����ѧ��
	 * @param stu
	 * @return
	 */
	public int saveStudent(Student stu) {
		Connection conn = DBUtils.getConn();
		int result = 0;
		String sql = "insert into STUDENT(STUDENT_NO,PASSWORD,STUDENT_NAME,SEX,SUBJECT,STU_CLASS) VALUES(?,?,?,?,?,?)";
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			pStatement.setString(1, stu.getStudentNo());
			//Ĭ�ϳ�ʼ����Ϊ123456
			pStatement.setString(2, "123456");
			pStatement.setString(3, stu.getStudentName());
			pStatement.setString(4, stu.getSex());
			pStatement.setString(5, stu.getSubject());
			pStatement.setString(6, stu.getStuClass());
			result = pStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return result ;
	}
	
	/**
	 * ѧ����¼��̨
	 * @param stu
	 * @return
	 */
	public Student selectForLogin(Student stu)
	{
		Connection conn = DBUtils.getConn();
		ResultSet rs=null;
		Student s=null;
		String sql = "select * from STUDENT where STUDENT_NO=? AND PASSWORD=?";
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			pStatement.setString(1, stu.getStudentNo());
			pStatement.setString(2, stu.getPassword());	
			rs = pStatement.executeQuery();
			
			while(rs.next())
			{
				s=new Student();
				s.setId(rs.getInt(1));
				s.setStudentNo(rs.getString(2));
				s.setPassword(rs.getString(3));
				s.setStudentName(rs.getString(4));
				s.setSex(rs.getString(5));
				s.setSubject(rs.getString(6));
				s.setStuClass(rs.getString(7));
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return s ;
	}
	
	
	/**
	 * ��������ѧ����Ϣ
	 * @param stu
	 * @return
	 */
	public List<Student> getStudent()
	{
		Connection conn = DBUtils.getConn();
		ResultSet rs=null;
		List<Student> stus=new ArrayList<Student>();
		String sql = "select * from STUDENT ";
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			
			rs = pStatement.executeQuery();
		
			while(rs.next())
			{
				Student s=new Student();
				s.setId(rs.getInt(1));
				s.setStudentNo(rs.getString(2));
				s.setPassword(rs.getString(3));
				s.setStudentName(rs.getString(4));
				s.setSex(rs.getString(5));
				s.setSubject(rs.getString(6));
				s.setStuClass(rs.getString(7));
				stus.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return stus ;
	}


	/**
	 * ��������ѧ����Ϣ
	 * @param stu
	 * @return
	 */
	public List<Student> findStudent(Student stu) {
		StringBuffer sql=new StringBuffer("select * from STUDENT ");
		boolean ifand=false;
		if(!("".equals(stu.getSubject())) ||  !("".equals(stu.getStuClass())))
		{
			sql.append("where ");
		}
		
		if(!("".equals(stu.getSubject())))
		{
			ifand=true;
			sql.append("SUBJECT ='"+stu.getSubject()+"'");
		}
		
		if(!("".equals(stu.getStuClass())))
		{
			if(ifand)
			{
				sql.append(" and STU_CLASS ='"+stu.getStuClass()+"'");
			}else{
				sql.append("STU_CLASS ='"+stu.getStuClass()+"'");
			}
		}
		Connection conn = DBUtils.getConn();
		ResultSet rs=null;
		List<Student> stus=new ArrayList<Student>();
		
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql.toString());
					
			rs = pStatement.executeQuery();
		
			while(rs.next())
			{
				Student s=new Student();
				s.setId(rs.getInt(1));
				s.setStudentNo(rs.getString(2));
				s.setPassword(rs.getString(3));
				s.setStudentName(rs.getString(4));
				s.setSex(rs.getString(5));
				s.setSubject(rs.getString(6));
				s.setStuClass(rs.getString(7));
				stus.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return stus ;
	}

	public Student getStuById(int id) {
		
		Connection conn = DBUtils.getConn();
		ResultSet rs=null;
		Student s=null;
		String sql = "select * from STUDENT where ID=?";
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			pStatement.setInt(1, id);
			rs = pStatement.executeQuery();
			while(rs.next())
			{
				s=new Student();
				s.setId(rs.getInt(1));
				s.setStudentNo(rs.getString(2));
				s.setPassword(rs.getString(3));
				s.setStudentName(rs.getString(4));
				s.setSex(rs.getString(5));
				s.setSubject(rs.getString(6));
				s.setStuClass(rs.getString(7));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return s ;
	}

	public int updateStu(Student stu) {
		
		Connection conn = DBUtils.getConn();
		int result = 0;
		String sql = "update STUDENT set STUDENT_NO=?,STUDENT_NAME=?,SEX=?,SUBJECT=?,STU_CLASS=? where id=?";
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			pStatement.setString(1, stu.getStudentNo());		
			pStatement.setString(2, stu.getStudentName());
			pStatement.setString(3, stu.getSex());
			pStatement.setString(4, stu.getSubject());
			pStatement.setString(5, stu.getStuClass());
			pStatement.setInt(6, stu.getId());
			result = pStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return result ;
	}

	public int deleteStu(Student stu) {
		
		Connection conn = DBUtils.getConn();
		int result = 0;
		String sql = "delete from STUDENT where id=?";
		try {
			PreparedStatement pStatement = conn.prepareStatement(sql);
			pStatement.setInt(1, stu.getId());
			result = pStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeConn(conn);
		}

		return result ;
	}
	
}
