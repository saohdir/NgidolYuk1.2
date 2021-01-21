
firebase.auth().onAuthStateChanged(function(user) {
  if (user) {
    // User is signed in.
	  
	  
	  
  } else {
    // No user is signed in.
	  
	  window.location.href = "login.jsp";
  }
});




function logout(){
    
    firebase.auth().signOut().then(function(){
    	alert("sukses");
    	 window.location.href = "login.jsp";
    
    	  // Sign-out succesful
     
    	}).catch(function(error){
    		console.log(error.mesaage);
    	});
};