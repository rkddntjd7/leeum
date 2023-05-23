package board;

import java.sql.*;
import java.util.*;

import com.sun.net.httpserver.Authenticator.Result;

import board.*;

public class BoardtheDAO extends BoardDAO {
	public static BoardtheDAO thedao = new BoardtheDAO();
	
	
	public static BoardtheDAO getInstance() {
		return thedao;
	}

/*
	public ArrayList<BoardBean> getSearch(String searchField, String searchText){
		String sql = "select * from board";
		String sqlWord = "";
		if(searchField.equals("subject")) {
			sqlWord = "where subject like '%" + searchText.trim() + "%'";
		}else if (searchField.equals("content")) {
			sqlWord = "where content like '%" + searchText.trim() + "%'";
		}else if (searchField.equals("writer")) {
			sqlWord = "where writer like '%" + searchText.trim() + "%'";
		}
		sql = sql + sqlWord;
		
		sql += "order by num desc limit 5";
		
		ArrayList<BoardBean> list = new ArrayList<BoardBean>();

//		String sql ="select * from board where "+searchField.trim();
		try {
//			 if(searchText != null && !searchText.equals("") ){
//				 sql +=" like '%" + searchText + "%' order by num desc limit 5";
//			 }

			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();   // select
			
			System.out.println(pstmt);
			
			while(rs.next()) {
				BoardBean bBean = new BoardBean();
				bBean.setNum(rs.getInt(1));
				bBean.setSubject(rs.getString(2));
				bBean.setWriter(rs.getString(3));
				bBean.setWdate(rs.getString(4));
				bBean.setPassword(rs.getString(5));
				bBean.setContent(rs.getString(6));
				bBean.setReadcount(rs.getInt(7));
				
				list.add(bBean);   // list에 해당 인스터스를 넘긴다
			}

		}catch (Exception e){
			e.printStackTrace();
		}
		return list;   // 게시글 반환
	}
	*/

}
