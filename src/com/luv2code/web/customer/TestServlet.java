package com.luv2code.web.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

// Define datasource/connection pool for Resource Injection
@Resource(name="jdbc/web_student_tracker")
private DataSource dataSource;


/**
* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
*/
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

// Step 1:  Set up the printwriter
PrintWriter out = response.getWriter();
response.setContentType("text/plain");

// Step 2:  Get a connection to the database
Connection myConn = null;
Statement myStmt = null;
ResultSet myRs = null;

try {
myConn = dataSource.getConnection();

// Step 3:  Create a SQL statements
String list_of_all_my_students = "select * from student";
String list_of_firstname_and_lastname_of_students = "select first_name, last_name FROM student";
String where_first_name_is_mary = "Select first_name, last_name FROM student where first_name='Mary'";
String where_studentid_is_seven = "Select id, email FROM student where id= 7";
String where_firstname_not_peyton= "select * from student where first_name != 'Peyton'";
String where_lastname_like_brown= "select * from student where last_name like '%brow%'";
String where_firstname_peyton_or_liya= "select * from student where first_name = 'Peyton' or first_name = 'Liya'";
String where_firstname_in_list= "select * from student where first_name in ('Liya', 'Mary', 'Kendel', 'Mike')";
String where_id_ordered_ascending= "select * from student order by id asc";
String select_all_including_date= "select * from student order by start_date";
String select_first_last_full= "SELECT id , first_name , last_name ,  CONCAT(first_name, ' ', last_name) as full_name FROM student ORDER BY id;";
String select_count_of_students= "SELECT count(*) as Number_of_Students from student";
String select_min_start_date= "SELECT min(start_date) FROM student";
String group_by_role="SELECT role\n" + 
		"FROM student\n" + 
		"GROUP BY role";
String total_count_group_by_role= "SELECT role, count(*) as 'TotalStudents'\n" + 
		"FROM student\n" + 
		"GROUP BY role\n" + 
		"ORDER BY count(*) DESC\n";
String select_grade_join_studentgrades= "SELECT first_name, last_name, grade\n" + 
		"FROM student\n" + 
		"JOIN studentgrades on student.id = studentgrades.id";

myStmt = myConn.createStatement();

// Step 4:  Execute SQL query
//myRs = myStmt.executeQuery(list_of_all_my_students);
//myRs = myStmt.executeQuery(list_of_firstname_and_lastname_of_students);
//myRs = myStmt.executeQuery(where_first_name_is_mary);
//myRs = myStmt.executeQuery(where_studentid_is_seven);
//myRs = myStmt.executeQuery(where_firstname_not_peyton);
//myRs = myStmt.executeQuery(where_lastname_like_brown);
//myRs = myStmt.executeQuery(where_firstname_peyton_or_liya);
//myRs = myStmt.executeQuery(where_firstname_in_list);
//myRs = myStmt.executeQuery(where_id_ordered_ascending);
//myRs = myStmt.executeQuery(select_all_including_date);
//myRs = myStmt.executeQuery(select_first_last_full);
//myRs = myStmt.executeQuery(select_count_of_students);
//myRs = myStmt.executeQuery(select_min_start_date);
//myRs = myStmt.executeQuery(group_by_role);
//myRs = myStmt.executeQuery(total_count_group_by_role);
myRs = myStmt.executeQuery(select_grade_join_studentgrades);



// Step 5:  Process the result set
while (myRs.next()) {
//String firstName = myRs.getString("first_name");
//String email = myRs.getString("email");
//out.println(email);
//out.println(firstName);
//int myRshascopiedtheidfromthedbinhere = myRs.getInt("id");
//String myRshascopiedtheemailfromthedbinhere = myRs.getString("email");
String myRshascopiedthefromthefirstnameinhere = myRs.getString("first_name");
String myRshascopiedthefromthelastnameinhere = myRs.getString("last_name");
//String myRshascopiedthestartdateinhere = myRs.getString("start_date");
//String myRshascopiedtheminstartdateinhere = myRs.getString("min(start_date)");
//String myRshascopiedthefullnameinhere = myRs.getString("full_name");
//int myRshascopiedcountinhere = myRs.getInt("Number_of_Students");
//	String myRscopiedgroupby= myRs.getString("role");
//	int myRscopiedtotal= myRs.getInt("TotalStudents");
String myRscopiedgrade= myRs.getString("grade");
out.println(myRshascopiedthefromthefirstnameinhere);
out.println(myRshascopiedthefromthelastnameinhere);
out.println(myRscopiedgrade);
//out.println(myRshascopiedthefullnameinhere);
//out.println(myRshascopiedtheemailfromthedbinhere);
//out.println(myRshascopiedthestartdateinhere);
//out.println(myRshascopiedcountinhere);
//out.println(myRshascopiedtheidfromthedbinhere);
//out.println(myRshascopiedtheminstartdateinhere);
//	out.println(myRscopiedtotal);
//	out.println(myRscopiedgroupby);
	
}
}
catch (Exception exc) {
exc.printStackTrace();
}
}

}







