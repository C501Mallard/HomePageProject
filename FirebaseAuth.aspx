<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FirebaseAuth.aspx.cs" Inherits="FirebaseAuth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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
        // FirebaseUI config.
        var uiConfig = {
            signInSuccessUrl: 'CheckAuthStatus.aspx',
            signInOptions: [
                // Leave the lines as is for the providers you want to offer your users.
                
                firebase.auth.GoogleAuthProvider.PROVIDER_ID,
                firebase.auth.EmailAuthProvider.PROVIDER_ID

                //firebase.auth.GoogleAuthProvider.PROVIDER_ID,
                //firebase.auth.FacebookAuthProvider.PROVIDER_ID,
                //firebase.auth.TwitterAuthProvider.PROVIDER_ID,
                //firebase.auth.GithubAuthProvider.PROVIDER_ID,
                //firebase.auth.EmailAuthProvider.PROVIDER_ID,
                //firebase.auth.PhoneAuthProvider.PROVIDER_ID
            ],
            // Terms of service url.
            tosUrl: 'https://www.google.com'
        };

        // Initialize the FirebaseUI Widget using Firebase.
        var ui = new firebaseui.auth.AuthUI(firebase.auth());
        // The start method will wait until the DOM is loaded.
        ui.start('#firebaseui-auth-container', uiConfig);
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <div class="col-lg-12">
        <%--        <h1 class="page-header" style="text-align:center; font-family:'微軟正黑體'">登入</h1>--%>
        <h1 class="page-header">登入</h1>
    </div>

    <div id="firebaseui-auth-container"></div>

</asp:Content>

