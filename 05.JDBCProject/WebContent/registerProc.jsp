<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %> <!-- import랑 같음 --> 
    
<%
	
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("pwd");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	//out.print(id);
	


	//1.JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");


	
	//2. 데이터 베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	//밑에 직접 연결해주는 것과 같은 역할 connection개체가 return이 됨 그래서 앞에Connection con을 씀
	
	
	//3. SQL문 실행
	// 1) Statement 객체 이용
	/*String sql = "insert into member values('" + id +"','"+ pass + "','홍길동',20,'1','서울시','2015-04-07')";
	Statement stmt = con.createStatement(); //원래 new로 만들어야하는데 createStatement메소드가 알아서 지원해서 안해도된다.
	int result = stmt.executeUpdate(sql);//alt+x 누른거랑 같음 (실행)
	out.print(result);*/ // 이거 안나옴
	
	// 2) PreparedStatement 객체 이용
	String sql = "insert into member values(?,?,?,?,?,?,default)"; //입력하려는게 6개니까 ?가 6개임
	PreparedStatement pstmt = con.prepareStatement(sql);
	//바인딩
	pstmt.setString(1,id);
	pstmt.setString(2,pass);
	pstmt.setString(3,name);
	pstmt.setInt(4,Integer.parseInt(age));//String은 참조형임 근데 int는 기본형이라서 서로 바꿀때 integer.parseint해야함) 
	pstmt.setString(5,gender);
	pstmt.setString(6,addr);
	
	
	int result = pstmt.executeUpdate();
	
	out.print(result);
			
			
			
			
			
	//4. 데이터베이스와 연결 끊음
    pstmt.close();
	con.close();
    
    
    
    
    




%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Insert title here</title>
</head>
<body>

</body>
</html>