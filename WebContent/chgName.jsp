<%@page import="modal.adminmodal"%>
<%@ page import="modal.Usermodal"%>
<%@ page import="dao.UserDao"%>
<%
String aname = request.getParameter("aname");
Integer apass = Integer.parseInt(request.getParameter("apass"));
adminmodal user = new adminmodal();
   user.setAname(aname);
   user.setApass(apass);
   UserDao userdao = new UserDao();
Integer b = userdao.updatename( user);
if (b == 1) {
   application.setAttribute("aname", user.getAname());
   response.sendRedirect("successName.jsp");

} else {
response.sendRedirect("error.jsp");
}
%>