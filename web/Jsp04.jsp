<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	public boolean findYear(int year){
		boolean w = false;
		if(year%4==0){
			if(year%100==0){
				if(year%400==0){
					w=true;
				}
				else{
					w=false;
				}
				
			}
			else{
				w=true;
			}
		}
		return w;
	}
	%>
	<%
	int num=0;
	for(int year =2000;year<=2020;year++){
		if(findYear(year)){
			num++;
		}
	}
	System.out.println(num+"个闰年");
	%>
</body>
</html>