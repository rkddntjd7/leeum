package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;



public class BoardDAO {
	
	Connection con; // 데이터베이스에 접근할수있도록 설정
	PreparedStatement pstmt; // 데이터베이스에서 쿼리를 실행시켜주는 객체
	ResultSet rs; // 데이터베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체
	
	// 데이터베이스에 접근하는 메소드
	public void getCon() {
		try {
			/*
			String id = "root";
			String password = "!+(Ye:m6V;t;";
			String url = "jdbc:mysql://13.124.74.6:3306/leeum";
			*/
			String url = "jdbc:mysql://localhost:3306/leeum";
			String id = "root";  
			String password = "chlduswns1!";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, id, password);
			System.out.println("연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("연결 실패");
		}
	}
	
	// 하나의 새로운 게시글이 넘어와서 저장되는 메소드
	public void insertBoard(BoardBean bean) {
		getCon();
		
		try {
			// 게시글 전체값을 데이터 테이블에 저장
			String sql = "insert into board values(num, ?, ?, sysdate(), ?, ?, 0)";
			pstmt = con.prepareStatement(sql);
			// ?에 값을 매핑
			pstmt.setString(1, bean.getSubject());
			pstmt.setString(2, bean.getWriter());
//			pstmt.setString(3, bean.getWdate());
			pstmt.setString(3, bean.getPassword());
			pstmt.setString(4, bean.getContent());
			
			// 쿼리 실행
			pstmt.executeUpdate();
			
			// 자원 반납
			con.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 모든 게시글을 리턴해주는 메소드 작성
	public Vector<BoardBean> getAllBoard() {
		// 리턴할 객체 선언
		Vector<BoardBean> v = new Vector<>();
		
		getCon();
		
		try {
			// 쿼리 준비
			String sql = "select * from board order by num desc";
			// 쿼리를 실행할 객체 선언
			pstmt = con.prepareStatement(sql);
			// 쿼리 실행 후 결과 저장
			rs = pstmt.executeQuery();
			// 데이터 개수를 모르기에 반복문으로 추출
			while (rs.next()) {
				// 데이터를 패키징
				BoardBean bean = new BoardBean();			
				bean.setNum(rs.getInt(1));
				bean.setSubject(rs.getString(2));
				bean.setWriter(rs.getString(3));
				bean.setWdate(rs.getDate(4).toString());
				bean.setPassword(rs.getString(5));
				bean.setContent(rs.getString(6));
				bean.setReadcount(rs.getInt(7));
				// 패키징 한 데이터를 백터에 저장
				v.add(bean);
			}
			
			con.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	
	// BoardInfo 하나의 게시글을 리턴하는 메소드
	public BoardBean getOneBoard(int num) {
		// 리턴 타입 선언
		BoardBean bean = new BoardBean();
		getCon();
		
		try {
			// 조회수 증가 쿼리
			String readsql = "update board set readcount = readcount + 1 where num = ?";
			pstmt = con.prepareStatement(readsql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			// 쿼리 준비
			String sql = "select * from board where num = ?";
			// 쿼리 실행 객체 선언
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			// 쿼리 실행 후 결과를 리턴
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setSubject(rs.getString(2));
				bean.setWriter(rs.getString(3));
				bean.setWdate(rs.getDate(4).toString());
				bean.setPassword(rs.getString(5));
				bean.setContent(rs.getString(6));
				bean.setReadcount(rs.getInt(7));
			}
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	// BoardUpdate용 하나의 게시글을 리턴
	public BoardBean getOneUpdateBoard(int num) {
		// 리턴 타입 선언
		BoardBean bean = new BoardBean();
		getCon();
		
		try {
			// 쿼리 준비
			String sql = "select * from board where num = ?";
			// 쿼리 실행 객체 선언
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			// 쿼리 실행 후 결과를 리턴
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setSubject(rs.getString(2));
				bean.setWriter(rs.getString(3));
				bean.setWdate(rs.getDate(4).toString());
				bean.setPassword(rs.getString(5));
				bean.setContent(rs.getString(6));
				bean.setReadcount(rs.getInt(7));
			}
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	// update 와 delete시 필요한 패스워드값을 리턴
	public String getPass(int num) {
		// 리턴할 변수 객체 선언
		String pass = "";
		getCon();
		try {
			// 쿼리 준비
			String sql = "select password from board where num = ?";
			// 쿼리 실행 객체 선언
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			// 패스워드값을 저장
			if (rs.next()) {
				pass = rs.getString(1);
			}
			// 자원 반납
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pass;
	}
	
	// 하나의 게시글을 수정하는 메소드
	public void updateBoard(BoardBean bean) {
		getCon();
		
		try {
			// 쿼리준비
			String sql = "update board set subject = ?, content = ? where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getSubject());
			pstmt.setString(2, bean.getContent());
			pstmt.setInt(3, bean.getNum());
			
			pstmt.executeUpdate();
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteBoard(int num) {
		getCon();
		
		try {
			// 쿼리 준비
			String sql = "delete from board where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int getBoardCount() {
		getCon();
		int count = 0;
		try {
			String sql = "select count(*) from board";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);   // 데이터가 없으면 null이고 return 값 0
				System.out.println("게시판 글 갯수 : " + count);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}
	
	public ArrayList<BoardBean> getBoardList() {
		
		ArrayList<BoardBean> boardlist = new ArrayList<BoardBean>();
		getCon();
		try {
			String sql = "select * from board order by num desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean bBean = new BoardBean();
				bBean.setNum(rs.getInt(1));
				bBean.setSubject(rs.getString(2));
				bBean.setWriter(rs.getString(3));
				bBean.setWdate(rs.getString(4));
				bBean.setPassword(rs.getString(5));
				bBean.setContent(rs.getString(6));
				bBean.setReadcount(rs.getInt(7));
				
				boardlist.add(bBean);   // list에 해당 인스터스를 넘긴다
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardlist;
	}
	
	
	// DB에서 게시글 전체 가져오는데 페이징처리한 메서드 구현 (메서드 오버로딩)
	public ArrayList<BoardBean> getBoardList(int startRow, int pageSize) {
		
		ArrayList<BoardBean> boardlist = new ArrayList<BoardBean>();
		getCon();
		try {
			String sql = "select * from board order by num desc limit ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow - 1);
			pstmt.setInt(2, pageSize);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardBean bBean = new BoardBean();
				
				bBean.setNum(rs.getInt(1));
				bBean.setSubject(rs.getString(2));
				bBean.setWriter(rs.getString(3));
				bBean.setWdate(rs.getString(4));
				bBean.setPassword(rs.getString(5));
				bBean.setContent(rs.getString(6));
				bBean.setReadcount(rs.getInt(7));
				
				boardlist.add(bBean);   // list에 해당 인스터스를 넘긴다
				
				System.out.println(pstmt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boardlist;
	}


	
	
	public int getSearchCount(String searchField, String searchText) {
		getCon();
		int count = 0;
		ArrayList<BoardBean> list = new ArrayList<BoardBean>();
		String sql ="select count(*) from board where "+searchField;
		try {
			 if(searchText != null && !searchText.equals("") ){
				 sql +=" like '%" + searchText + "%'";
			 }

			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();   // select
			
			if(rs.next()) {
				count = rs.getInt(1);   // 데이터가 없으면 null이고 return 값 0
				System.out.println("게시판 글 갯수 : " + count);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}
	
	
	public ArrayList<BoardBean> getSearch(String searchField, String searchText){
		getCon();
		
		ArrayList<BoardBean> list = new ArrayList<BoardBean>();

		String sql ="select * from board where "+searchField;
		try {
			 if(searchText != null && !searchText.equals("") ){
				sql +=" like '%" + searchText + "%' order by num desc";
			 }

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
	// DB에서 게시글 검색결과 가져오는데 페이징처리한 메서드 구현 (메서드 오버로딩)
	public ArrayList<BoardBean> getSearch(String searchField, String searchText, int startRow, int pageSize){
		getCon();
		
		ArrayList<BoardBean> list = new ArrayList<BoardBean>();

		String sql ="select * from board where "+searchField;
		try {
				sql +=" like '%" + searchText + "%' order by num desc limit ?,?";
			 

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow - 1);
			pstmt.setInt(2, pageSize);
			
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
	
	
	
	/*
	public String getDate() {//현재 서버 시간 가져오기
		getCon();
		String sql="select now()";//현재 시간을 가져오는 mysql문장
		try {
			pstmt = con.prepareStatement(sql);//sql문장을 실행 준비 단계로
			rs = pstmt.executeQuery();//실행결과 가져오기
			if(rs.next()) {
				return rs.getString(1);//현재 날짜 반환
			}
			
		} catch(Exception e) {
			e.printStackTrace();//오류 발생
		}
		return "";//데이터베이스 오류
	}
	*/
	
	public int getNext() {
		getCon();
		
		try {
			String sql = "select commentID from comments order by commentID desc";//마지막 게시물 반환
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			System.out.println(rs);
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫 번째 게시물인 경우
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;//데이터베이스 오류
	}
	
	public int write(String commentContent, String userID, int bbsID, int commentID) {
		getCon();
		
		System.out.println("write");
		try {
			String sql="insert into comments values (?, ?, ?, ?, sysdate(), 1)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, commentID);
			pstmt.setInt(2, bbsID);
			pstmt.setString(3, commentContent);
			pstmt.setString(4, userID);
			//pstmt.setString(4, getDate());
			System.out.println("가");
			System.out.println(pstmt);
			
			return pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;//데이터베이스 오류
	}
	
	public ArrayList<Comment> getList(int bbsID) {   // 특정한 리스트를 받아서 반환
		getCon();
		String sql = "select * from comments where bbsID = ?  and commentAvailable = 1 order by bbsID desc limit 5";//마지막 게시물 반환, 삭제가 되지 않은 글만 가져온다.
		ArrayList<Comment> list = new ArrayList<Comment>();
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bbsID);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Comment comment = new Comment();
				
				comment.setCommentID(rs.getInt(1));
				comment.setBbsID(rs.getInt(2));
				comment.setCommentContent(rs.getString(3));
				comment.setUserID(rs.getString(4));
				comment.setCommentDate(rs.getString(5));
				comment.setCommentAvailable(rs.getInt(6));
				
				list.add(comment);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public Comment getComment(int commentID) {   // 하나의 댓글 내용을 불러오는 함수
		getCon();
		String sql = "select * from comments where commentID = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, commentID);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Comment comment = new Comment();
				comment.setCommentContent(rs.getString(1));
				comment.setCommentID(rs.getInt(2));
				comment.setUserID(rs.getString(3));
				comment.setCommentAvailable(rs.getInt(4));
				comment.setCommentDate(rs.getString(5));
				comment.setBbsID(rs.getInt(6));
				
				return comment;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;		
	}
	
	public int update(int bbsID, int commentID, String commentContent) {
		getCon();
		String sql = "update comments set commentContent = ? where bbsID = ? and commentID = ?";   // 특정한 아이디에 해당하는 제목과 내용을 바꿔준다.
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, commentContent);
			pstmt.setInt(2, bbsID);
			pstmt.setInt(3, commentID);
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1;
	}
	
	public int delete(int commentID) {
		getCon();
		String sql = "update comments set commentAvailable = 0 where commentID = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, commentID);
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1;
	}
}
