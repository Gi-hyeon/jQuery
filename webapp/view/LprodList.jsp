<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<LprodVO> voList = (List<LprodVO>)request.getAttribute("listvalue");
%>
[

<%
	for(int i=0; i<voList.size(); i++){
		LprodVO vo = voList.get(i);
		if(i > 0){
			out.print(",");
		}
%>
		{
			"lprod_id" : "<%= vo.getLprod_id() %>",
			"lprod_gu" : "<%= vo.getLprod_gu() %>",
			"lprod_nm" : "<%= vo.getLprod_nm() %>"
		}
<% 
	}
%>
]
