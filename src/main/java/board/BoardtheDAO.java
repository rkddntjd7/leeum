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

}
