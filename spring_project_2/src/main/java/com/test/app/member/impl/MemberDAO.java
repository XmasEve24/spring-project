package com.test.app.member.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.test.app.board.BoardVO;
import com.test.app.member.MemberVO;

@Repository("memberDAO")
public class MemberDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private String member_selectOne = "select * from memberS where mid=? and password=?";
	private String member_insert="insert into memberS(mid,password,name,role) values(?,?,?,?)";
	private String member_update="update memberS set password=?,name=? where mid=?";
	
	public MemberVO selectOne(MemberVO vo)throws SQLException{
		Object[] obj = { vo.getMid(),vo.getPassword() };
		return jdbcTemplate.queryForObject(member_selectOne, obj, new MemberRowMapper());
	}
	
	public void insertMember(MemberVO vo) {
		System.out.println("회원가입");
		jdbcTemplate.update(member_insert, vo.getMid(), vo.getPassword(), vo.getName(), vo.getRole());
	}
	
	public void updateMember(MemberVO vo) {
		System.out.println("updateMember");
		jdbcTemplate.update(member_update,vo.getPassword(),vo.getName(),vo.getMid());
	}
}
class MemberRowMapper implements RowMapper<MemberVO> {

	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MemberVO data = new MemberVO();
		data.setMid(rs.getString("mid"));
		data.setName(rs.getString("name"));
		data.setPassword(rs.getString("password"));
		data.setRole(rs.getString("role"));
		return data;
	}

}