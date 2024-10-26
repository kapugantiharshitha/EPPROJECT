<!DOCTYPE html>
<html>
<head>
    <title>Travel Booking</title>
</head>
<body>
    <h1>Travel Booking</h1>
    <form method="get"  action="payment.jsp">
<table align="center">

<tr>
    <td><b>Full Name</b></td>
    <td>
        <input type="text" name="name" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Select Gender</b></td>
    <td>
        Male<input type="radio" name="gender" value="male" required>
        Female<input type="radio" name="gender" value="female" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Place</b></td>
    <td>
       <select name="place" required>
        <option>---Select---</option>
        <option value="goa">GOA</option>
         <option value="SINGAPUR">SINGAPUR</option>
          <option value="HYDERABAD">HYDERABAD</option>
           <option value="MALDIVES">MALDIVES</option>
            <option value="PARIS">PARIS</option>
             <option value="BANGKOK">BANGKOK</option>
            
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Email Address</b></td>
    <td>
        <input type="text" name="email" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Date of Joining</b></td>
    <td>
        <input type="date" name="doj" required placeholder="DD/MM/YYYY">
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Nationality</b></td>
    <td>
        <select name="nationality" required>
        <option>---Select---</option>
        <option value="INDIAN">INDIAN</option>
         <option value="OTHER">OTHER</option>
        </select>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Amount</b></td>
    <td>
        <input type="amount" name="amount" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Contact No</b></td>
    <td>
        <input type="number" name="contact" required>
    </td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr align="center">
    <td>
        <input type="submit" value="Conform Booking" required class="button">
    </td>
    <td>
        <input type="reset" value="Clear" required class="button">
    </td>
</tr>
</table>
</body>
</html>
