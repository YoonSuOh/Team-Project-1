package Car;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CarDAO extends HttpServlet {
	static private Connection conn;
	static private ResultSet rs;
	
	
	public CarDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "YOON"; /* 노트북 개발시 C##Scott */
			String dbPW = "3304";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static int getNext() {
		String sql = "select LIST_NUM from CAR order by LIST_NUM desc";
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "YOON"; /* 노트북 개발시 C##Scott */
			String dbPW = "3304";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public static int addCar(HttpServletRequest request, HttpServletResponse resp, String car_num, String manufacturer, String car_model, String car_detail_model, int car_year, int car_distance, String accident_check, String carkind, String fuel, int price, String dealer_id, String dealer_phone, String pic1) throws ServletException, IOException{
		String realFolder = "D:\\전공 공부\\2022-2\\융합프로젝트\\sosa_motors\\src\\main\\webapp\\resources\\images\\"; //웹 어플리케이션상의 절대 경로
		String encType = "utf-8"; //인코딩 타입
		int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
		
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		
		car_num=multi.getParameter("car_num");
		manufacturer=multi.getParameter("manufac");
		car_model=multi.getParameter("car_model");
		car_detail_model=multi.getParameter("car_detail_model");
		car_year=Integer.parseInt(multi.getParameter("car_year"));
		car_distance=Integer.parseInt(multi.getParameter("car_distance"));;
		accident_check=multi.getParameter("accident_check");
		carkind=multi.getParameter("car_kind");
		fuel=multi.getParameter("fuel");
		price=Integer.parseInt(multi.getParameter("price"));;
		dealer_id=multi.getParameter("dealer_id");
		dealer_phone=multi.getParameter("dealer_phone");
	 	String PIC1 = (String) files.nextElement();
		pic1 = multi.getFilesystemName(PIC1);
		
		String sql = "insert into CAR values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "YOON"; /* 노트북 개발시 C##Scott */
			String dbPW = "3304";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, car_num);
			pstmt.setString(3, manufacturer);
			pstmt.setString(4, car_model);
			pstmt.setString(5, car_detail_model);
			pstmt.setInt(6, car_year);
			pstmt.setInt(7, car_distance);
			pstmt.setString(8, accident_check);
			pstmt.setString(9, carkind);
			pstmt.setString(10, fuel);
			pstmt.setInt(11, price);
			pstmt.setString(12, dealer_id);
			pstmt.setString(13, dealer_phone);
			pstmt.setString(14, pic1);
			pstmt.setInt(15, 1);
			return pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
		
	}
	
	public static ArrayList<Car> getList(int pageNumber){
		String sql = "select * from CAR where LIST_NUM <? and LIST_NUM_AVAILABLE = 1 and ROWNUM <= 12 order by LIST_NUM desc";
		ArrayList<Car> list = new ArrayList<Car>();
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "YOON"; /* 노트북 개발시 C##Scott */
			String dbPW = "3304";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1)*10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Car car = new Car();
				car.setLIST_NUM(rs.getInt(1));
				car.setCar_num(rs.getString(2));
				car.setManufacturer(rs.getString(3));
				car.setCar_model(rs.getString(4));
				car.setCar_detail_model(rs.getString(5));
				car.setCar_year(rs.getInt(6));
				car.setCar_distance(rs.getInt(7));
				car.setAccident_check(rs.getString(8));
				car.setCarkind(rs.getString(9));
				car.setFuel(rs.getString(10));
				car.setPrice(rs.getInt(11));
				car.setDealer_id(rs.getString(12));
				car.setDealer_phone(rs.getString(13));
				car.setPic1(rs.getString(14));
				car.setList_num_available(rs.getInt(15));
				list.add(car);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static boolean nextPage(int pageNumber) {
		String sql = "select * from CAR where LIST_NUM < ? and LIST_NUM_AVAILABLE = 1";
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "YOON"; /* 노트북 개발시 C##Scott */
			String dbPW = "3304";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1)*12);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static Car getCar(int LIST_NUM) {
		String sql = "select * from CAR where LIST_NUM = ?";
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "YOON"; /* 노트북 개발시 C##Scott */
			String dbPW = "3304";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, LIST_NUM);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Car car = new Car();
				car.setLIST_NUM(rs.getInt(1));
				car.setCar_num(rs.getString(2));
				car.setManufacturer(rs.getString(3));
				car.setCar_model(rs.getString(4));
				car.setCar_detail_model(rs.getString(5));
				car.setCar_year(rs.getInt(6));
				car.setCar_distance(rs.getInt(7));
				car.setAccident_check(rs.getString(8));
				car.setCarkind(rs.getString(9));
				car.setFuel(rs.getString(10));
				car.setPrice(rs.getInt(11));
				car.setDealer_id(rs.getString(12));
				car.setDealer_phone(rs.getString(13));
				car.setPic1(rs.getString(14));
				car.setList_num_available(rs.getInt(15));
				return car;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
