<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="kr.or.ddit.buyer.service.BuyerServiceImpl"%>
<%@page import="kr.or.ddit.buyer.service.IBuyerService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	//요청 데이터
	String id = request.getParameter("id");
	
	//service 객체를 얻어오기
	IBuyerService service = BuyerServiceImpl.getService();

	//service 메서드 호출 결과값 받기
	BuyerVO vo = service.selectById(id);
	
	
	//결과값을 request에 저장 ㄴㅡㅡㅡ 위에 list를 밸류로 넣어야함
	request.setAttribute("vovalue", vo);
	
	//view페이지로 이동
	RequestDispatcher disp = request.getRequestDispatcher("/view/BuyerList2.jsp");
	
	disp.forward(request, response);
%>
</body>
</html>