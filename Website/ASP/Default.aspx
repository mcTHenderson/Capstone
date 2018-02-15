<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!Doctype html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="author" content="Trent Henderson and..."/>
    <meta name="description" content="Capstone Project"/>
<!--
    Capstone Project
    Quarter 1 Website Design

    Artfully Yours
    Author:     Trent Henderson and...
    Date:       9/29/2017

    Filename    capstone.htm
-->
    <title>Artfully Yours Create Account</title>
    <link href="project.css" rel="stylesheet" type="text/css" />
    <link href="login.css" rel="stylesheet" type="text/css" />
    <script src="ay.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz" rel="stylesheet">
</head>
    
<body>
    <form id="form1" runat="server">
    <!-- Slideshow -->
<div id="header">
<img class="logo" src="images/capstoneLogo(s).png" alt="Insert Logo"/><span class="title">Login</span>
<div class="dropdown">
    <a href="#" class="link"><img src="links/button(placeholder).png" alt="Insert Text" class="dropbtn"></a>
    <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
    </div>
</div>
<div class="dropdown">
    <a href="#" class="link"><img src="links/button(placeholder).png" alt="Insert Text" class="dropbtn"></a>
        <div class="dropdown-content">
            <a href="#">Link 1</a>
            <a href="#">Link 2</a>
            <a href="#">Link 3</a>
        </div>
</div>
<div class="dropdown">
    <a href="#" class="link"><img src="links/button(placeholder).png" alt="Insert Text" class="dropbtn"></a>
        <div class="dropdown-content">
            <a href="#">Link 1</a>
            <a href="#">Link 2</a>
            <a href="#">Link 3</a>
        </div>
</div>
</div>
    <asp:Literal ID="regResults" runat="server" Visible="False" />
  <div class="imgcontainer">
  </div>

  <div class="container">
    <label><b>Username</b></label>
      <asp:TextBox ID="username" runat="server">Username</asp:TextBox>
    <!--<input type="text" placeholder="Enter Username" name="uname" required>-->

    <label><b>Password</b></label>
    <!--<input type="password" placeholder="Enter Password" name="psw" required>-->
      <asp:TextBox ID="password" runat="server">Password</asp:TextBox>

    <!--<button type="submit">Login</button>-->
      <asp:Button ID="Button1" runat="server" Text="Login" />
    <!--<input type="checkbox" checked="checked"> Remember me-->
      <asp:CheckBox ID="checkbox" runat="server" />Remember me
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#" id="passwordtext">password?</a></span>
  </div>
<asp:Literal ID="results" runat="server"></asp:Literal>
<div id="footer">
    <Span>&copy; 2017 Capstone</Span>
</div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CapstoneSchoolDataBaseConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                    <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                    <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>