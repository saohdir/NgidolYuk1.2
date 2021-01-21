<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Admin Page</title>
	<link rel="stylesheet" 	type="text/css"	 href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
	<link rel="stylesheet" type="text/css"	 href="style.css">
  </head>
  <body>
	<main>
	   <form>
		<label for="adminId">ADMIN ID</label><br>
		<input type="number" name="adminId" id="adminId"><br>
		
		<label for="tanggalShow"> TANGGAL SHOW </label><br>
		<input type="date" name="tanggalShow" id="tanggalShow"><br>
		
		<label for="waktuShow"> WAKTU SHOW </label><br>
		<input type="number" name="waktuShow" id="waktuShow"><br>
		
		<label for="namaShow"> SETLIST </label><br>
		<input type="text" name="namaShow" id="namaShow"><br>
		
		<label for="nama_team"> TEAM </label><br>
		<input type="text" name="namaTeam" id="namaTeam"><br>
		
		
		<button id="addBtn" class="btn waves-effect waves-light">Add</button>
		<button id="updateBtn" class="btn waves-effect waves-light">Update</button>
		<button id="removeBtn" class="btn waves-effect red darken-1">Remove</button>
		<div class="btn-logout">
		<button class="btn waves-effect red darken-1" style="width : 242px" type="button" onclick="logout()">Logout</button>
		</div>
	 </form>
	
	   
	   <table id="tabelMember">
	   	<tr>
	   		<th> TANGGAL PERTUNJUKAN </th>
	   		<th> WAKTU SHOW </th>
	   		<th> SETLIST </th>
	   		<th> TEAM </th>
	   		</tr>
	   </table>
	   
	   
	</main>
	<script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-auth.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-firestore.js"></script>
	<script src="https://www.gstatic.com/firebasejs/7.15.4/firebase-analytics.js"></script>
	<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyCoiYPQJ2vkCGTW5Ru1in-8qm1j0vUCWJY",
    authDomain: "loginemail-a0180.firebaseapp.com",
    databaseURL: "https://loginemail-a0180.firebaseio.com",
    projectId: "loginemail-a0180",
    storageBucket: "loginemail-a0180.appspot.com",
    messagingSenderId: "270509502004",
    appId: "1:270509502004:web:5265cadd6fcfe19187e461",
    measurementId: "G-7K4XSY7T1P"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
<script src="logoutemail.js"></script>

	<script src="function.js"></script>
   </body>
</html>