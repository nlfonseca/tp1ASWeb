<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en" class="no-js">
    <head>
    
    <meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Fifa Votes</title>
		
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/menu_topside.css" />
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
	
    <body>
        <%
			String username = (String) session.getAttribute("username");
        	String userId = (String) session.getAttribute("userId");
        	String pageName = "Vote in Your Favorite";
		%>
    	<div class="main-container">
    		<!-- nav -->
			<div class="menu-wrap">
				<nav class="menu-top">
					<div class="profile">
						<img src="img/avatar.png" alt="<%= username %>" style="width:42px;"/>
						<span class="profile-username" data-userid="<%= userId %>"><%= username %></span>
					</div>
				</nav>
				<nav class="menu-side">
					<a href="#">
						<i class="fa fa-search"></i>
						<input class="search-tag" id="search-tag" name="search-tag" title="search tag" type="text" placeholder="Search">
					</a>
					<a href="index.jsp"><i class="fa fa-user"></i> Profile</a>
					<form action="/insta/logout" method="post">
						<input class="input-logout" type="submit" value="Logout" />
					</form>
				</nav>
			</div>
			
			<button class="menu-button" id="open-button">Open Menu</button>
			
			<!-- content -->
			<div class="content-wrap">
				<div class="main-content">
					<header class="content__header">
						<h1 id="page-name"><%= pageName %></h1>
						<div class="content__subtitle"></div>
					</header>
					
					<section class="content__main">
						 
						 <!-- result -->
			            <div id="container-photos" class="row text-left">
			            	<label><input type="radio" name="vote-player" id="1"> Name 1</label>
			            	<label><input type="radio" name="vote-player" id="2"> Name 2</label>
			            	<label><input type="radio" name="vote-player" id="3"> Name 3</label>
			            	<label><input type="radio" name="vote-player" id="4"> Name 4</label>
			            	<label><input type="radio" name="vote-player" id="5"> Name 5</label>
			            	<label><input type="radio" name="vote-player" id="6"> Name 6</label>
			            	<label><input type="radio" name="vote-player" id="7"> Name 7</label>
			            	<label><input type="radio" name="vote-player" id="8"> Name 8</label>
			            	<label><input type="radio" name="vote-player" id="9"> Name 9</label>
			            	<label><input type="radio" name="vote-player" id="10"> Name 10</label>
			            </div>

					</section>
				</div>
		    </div>
		</div>
		
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
        
    </body>

</html>