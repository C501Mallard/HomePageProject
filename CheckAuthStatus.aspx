<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckAuthStatus.aspx.cs" Inherits="CheckAuthStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="https://www.gstatic.com/firebasejs/4.6.1/firebase.js"></script>
    <script src="https://www.gstatic.com/firebasejs/ui/2.4.1/firebase-ui-auth__zh_tw.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.firebase.com/libs/firebaseui/2.4.1/firebaseui.css" />

    <script>
        // Initialize Firebase
        var config = {
            apiKey: "AIzaSyDHxAbxFyUjKUF35Zzv-EVEu3QbqVeA6eQ",
            authDomain: "rookieauth-26cea.firebaseapp.com",
            databaseURL: "https://rookieauth-26cea.firebaseio.com",
            projectId: "rookieauth-26cea",
            storageBucket: "",
            messagingSenderId: "958285283191"
        };
        firebase.initializeApp(config);
    </script>
    <script type="text/javascript">
        initApp = function () {
            firebase.auth().onAuthStateChanged(function (user) {
                if (user) {
                    // User is signed in.
                    var displayName = user.displayName;
                    var email = user.email;
                    var emailVerified = user.emailVerified;
                    var photoURL = user.photoURL;
                    var uid = user.uid;
                    var phoneNumber = user.phoneNumber;
                    var providerData = user.providerData;

                    var myObj, x, localStorage, text, obj;

                    user.getIdToken().then(function (accessToken) {
                        //document.getElementById('sign-in-status').textContent = 'Signed in 已登入';
                        ////document.getElementById('sign-in').textContent = 'Sign out';
                        //document.getElementById('account-details').textContent = JSON.stringify({
                        //    displayName: displayName,
                        //    email: email,
                        //    emailVerified: emailVerified,
                        //    phoneNumber: phoneNumber,
                        //    photoURL: photoURL,
                        //    uid: uid,
                        //    accessToken: accessToken,
                        //    providerData: providerData
                        //}, null, '  ');
                       
                        //myJSON = JSON.stringify({ uid: uid }, null, '  ');

                        //document.getElementById("demo").innerHTML += myObj.uid;

                        //myJSON = JSON.stringify({
                        //    displayName: displayName,
                        //    email: email,
                        //    emailVerified: emailVerified,
                        //    phoneNumber: phoneNumber,
                        //    photoURL: photoURL,
                        //    uid: uid,
                        //    accessToken: accessToken,
                        //    providerData: providerData
                        //}, null, '  ');
                        ////document.getElementById("demo").innerHTML += myObj.uid;
                        //document.getElementById('demo').textContent = myJSON;
                        //document.getElementById('account-details').textContent = photoURL;

                        $('#demo').empty();//先清空 id=booklist 的物件
                        $('#demo').append('<tbody>');
                        var trd = "<br />";
                        trd += "<img src='" + photoURL + "' width='30%' /><br />";
                        trd += "<h4>" + uid + "</h4><br />";
                        trd += "<h4>" + email + "</h4><br />";
                        trd += "<h4>" + displayName + "</h4><br />";
                        $('#demo').append(trd);
                        $('#demo').append('</tbody>');
                    });
                } else {
                    // User is signed out.
                   document.getElementById('sign-in-status').textContent = 'Signed out 已登出';
                    //document.getElementById('sign-in').textContent = 'Sign in';
                   document.getElementById('account-details').textContent = 'null';
                }
            }, function (error) {
                console.log(error);
            });
        };

        window.addEventListener('load', function () {
            initApp()
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h1>檢查登入情況</h1>
    <hr>
    <div id="sign-in-status"></div>
    <br>
    <!--<div id="sign-in"></div>-->
    <div id="account-details"></div>
    <p id="demo">
        
    </p>
    <table id="booklist"></table>
    
</asp:Content>

