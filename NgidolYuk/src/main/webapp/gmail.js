
function googleSignIn(){
    // first of all create google provider object

    var provider = new firebase.auth.GoogleAuthProvider();
    //Login with popup window
    firebase.auth().signInWithPopup(provider).then(function(){
        //code executes after succesful Login

        window.location="adminpage.html";
    }).catch(function(error){
        var errorMessage=error.message;
        alert(errorMessage);
        
    })
}
  