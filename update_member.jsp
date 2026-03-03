<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Update Member</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">


</head>
<body>

<h2>Update Member</h2>

<form action="<%= request.getContextPath() %>/updateMember" method="post">

<!-- Hidden ID -->
<input type="hidden" name="memberid" value="<%= request.getParameter("id") %>">

Name:
<input type="text" name="name"
value="<%= request.getParameter("name") %>" required>
<br><br>

Membership Type:
<select name="membershiptype" required>
<option value="Monthly"
<%= "Monthly".equals(request.getParameter("membershiptype")) ? "selected" : "" %>>
 
Monthly
</option>

<option value="Quarterly"
<%= "Quarterly".equals(request.getParameter("membershiptype")) ? "selected" : "" %>> Quarterly
</option>

<option value="Yearly"
<%= "Yearly".equals(request.getParameter("membershiptype")) ? "selected" : "" %>> Yearly
</option>
</select>
<br><br>

Start Date:
<input type="date" name="startdate"
value="<%= request.getParameter("startdate") %>" required>
<br><br>

End Date:
<input type="date" name="enddate"
value="<%= request.getParameter("enddate") %>" required>
<br><br>

<button type="submit">Update Member</button>

</form>

<br>
<a href="${pageContext.request.contextPath}/viewMember" class="back-btn">
⬅ Back
</a>


</body>
</html>
