<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<BuyerVO> voList = (List<BuyerVO>)request.getAttribute("listvalue");
%>
[

<%
	for(int i=0; i<voList.size(); i++){
		BuyerVO vo = voList.get(i);
		if(i > 0){
			out.print(",");
		}
%>
		{
			"id" : "<%= vo.getBuyer_id() %>",
			"name" : "<%= vo.getBuyer_name() %>"
		}
<% 
	}
%>
]
