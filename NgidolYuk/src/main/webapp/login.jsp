<html>
    <head>
        <title> Login Admin Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="login.css">
    </head>
    <body>
    		<div class="cont">
            <div id="login_div" class="form">
                <h2>Sign In</h2>
                <label>
                    <span>Email Address</span>
                    <input type="email" name="email" id="email_field">
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="password" id="password_field">
                </label>
                <button class="submit" type="button" onclick="login()">Sign In</button>
                <p class="login-gmail">Or login with G-Mail</p>

                <div class="socil-media">
                    <ul>
                    <li onclick="googleSignIn()"><img src="images/gmail.png"></li>
                    </ul>
                </div>
            </div>

            <div class="sub-cont">
                <div class="img"></div>
            </div>
            </div>
     

    

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-analytics.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.15.5/firebase-auth.js"></script>

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
<script src="loginemail.js"></script>
<script src="gmail.js"></script>


    </body>
</html>