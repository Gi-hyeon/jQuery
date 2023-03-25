<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// Controller에서 저장된 처리결과 값을 꺼낸다.
List<MemberVO> voList = (List<MemberVO>)request.getAttribute("listvalue");
%>
[

<%
	for(int i=0; i<voList.size(); i++){
		MemberVO vo = voList.get(i);
		if(i > 0){
			out.print(",");
		}
%>
		{
			"id"   : "<%= vo.getMem_id() %>",
			"name" : "<%= vo.getMem_name() %>",
			"tel"  : "<%= vo.getMem_hp() %>",
			"mail" : "<%= vo.getMem_mail() %>"
		}
<%
	}
%>

]
