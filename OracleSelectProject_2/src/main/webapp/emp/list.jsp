<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,com.sist.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
EmpDAO dao=new EmpDAO();
ArrayList<EmpVO> list=dao.empAllData();
for(EmpVO vo:list)
{
		out.println(vo.getEmpno()+" "      //jsp에서는 out.println     이클립스 system.out.println
			+vo.getEname()+" "
			+vo.getJob()+ " "
			+vo.getHiredate()+" "
			+vo.getSal()+" "
			+vo.getDvo().getDname()+" "
			+vo.getDvo().getLoc()+" "
			+vo.getSvo().getGrade()+"<br>");    //<br>:줄바꿈
}
%>

</body>
</html>