<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.gym.model.Member" %>

<!DOCTYPE html>
<html>
<head>
<title>View Members</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">

</head>
<body>
 
<h2>All Members</h2>

<table border="1" cellpadding="10">
<tr>
<th>ID</th>
<th>Name</th>
<th>Membership Type</th>
<th>Start Date</th>
<th>End Date</th>
<th>Action</th>
</tr>

<%
List<Member> list = (List<Member>) request.getAttribute("memberList");

if (list != null && !list.isEmpty()) { for (Member m : list) {
%>

<tr>
<td><%= m.getMemberId() %></td>
<td><%= m.getName() %></td>
<td><%= m.getMembershipType() %></td>
<td><%= m.getStartDate() %></td>
<td><%= m.getEndDate() %></td>
<td>
<a href="<%= request.getContextPath() %>/view/update_member.jsp?id=<%= m.getMemberId() %>&name=<%= m.getName() %>&membershiptype=<%= m.getMembershipType() %>&startdate=<%= m.getStartDate() %>&enddate=<%= m.getEndDate()
%>">
Edit
</a>	|
<a href="<%= request.getContextPath() %>/deleteMember?memberid=<%= .getMemberId()
%>">
Delete
</a>
</td>
</tr>
<%
}
} else {
%>
<tr>
<td colspan="6">No Members Found</td>
</tr>
<%
}
%>
</table>
<br>
<a href="${pageContext.request.contextPath}/view/index.jsp" class="back-btn">
⬅ Back
</a>
</body>
</html>
