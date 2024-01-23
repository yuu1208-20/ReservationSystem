package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class dateDao {

	//DB接続情報
	private final String RDB_DRIVE = "com.mysql.cj.jdbc.Driver";
	private final String URL = "jdbc:mysql://localhost/reservationdb";
	private final String USER = "root";
	private final String PASS = "root";
	
	//DB接続メソッド
	public Connection getConnection() throws SQLException {
		try {
			Class.forName(RDB_DRIVE);
			System.out.println("接続成功");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("接続失敗");
		}
		return DriverManager.getConnection(URL,USER,PASS);
	}
	
	//予約日付登録メソッド
	public void insert(Date date) {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "insert into reserve(date) values(?)";
		try {
			con = getConnection();
			ps = con.prepareStatement(sql);
			ps.setDate(1,date);
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) {
					ps.close();
				}
				if(con != null) {
					con.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
