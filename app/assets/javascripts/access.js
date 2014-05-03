// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

    (function() {
        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
        po.src = 'https://apis.google.com/js/client:plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
        })();

var profile, email;


function signinCallback(authResult) {
    if (authResult) {
        if (authResult['error'] == undefined) {
            var button = document.getElementById("gSignInWrapper");
            button.style["display"]="none";
            
            gapi.client.load('plus', 'v1', loadProfile);
        } else {
            console.log(authResult['error']);
        } 
    } else { 
        console.log('Empty authResult');
    }
}

function loadProfile() {
    var request = gapi.client.plus.people.get( {'userId' : 'me'} );
    request.execute(loadProfileCallback);
}

function loadProfileCallback(obj) {
    profile = obj;

    email = obj['emails'].filter(function(v) {
        return v.type === 'account';
    })[0].value;
    console.log(email);
    setEmail(email);

}

function setEmail(email) {
    document.getElementById('email').value = email;
    submitForm();
}

function submitForm() {
    document.mailform.submit();
}

