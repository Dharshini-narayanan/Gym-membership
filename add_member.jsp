<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Add Member</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">

</head>
<body>

<h2>Add New Member</h2>
<form action="../addMember" method="post"> Name:
<input type="text" name="name" required>
<br><br>
Membership Type:
<select name="membershiptype" required>
<option value="">--Select--</option>
<option value="Monthly">Monthly</option>
<option value="Quarterly">Quarterly</option>
<option value="Yearly">Yearly</option>
</select>
<br><br>

Start Date:
<input type="date" name="startdate" required>
<br><br>

End Date:
<input type="date" name="enddate" required>
<br><br>

<button type="submit">Add Member</button>

</form>

<br>
<a href="${pageContext.request.contextPath}/view/index.jsp" class="back-btn">
⬅ Back
</a>


</body>
</html>
