﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"> </asp:Content> <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">     <form id="form1" runat="server">         <div class="container">             <div class="row">                 <div class="col-md-4 col-md-offset-4">                     <div class="login-panel panel panel-default">                         <div class="panel-heading">                             <h3 class="panel-title">請登入</h3>                         </div>                         <div class="panel-body">                             <form role="form">                                 <fieldset>                                     <div class="form-group">                                         <input class="form-control" placeholder="帳號信箱" name="email" type="email" autofocus />                                     </div>                                     <div class="form-group">                                         <input class="form-control" placeholder="密碼" name="password" type="password" value="" />                                     </div>                                     <div class="checkbox">                                         <label>                                             <input name="remember" type="checkbox" value="Remember Me" />記住我                                                                             </label>                                     </div>                                     <!-- Change this to a button or input when using this as a form -->                                     <a href="login.aspx" class="btn btn-lg btn-success btn-block">登入</a>                                 </fieldset>                             </form>                         </div>                     </div>                 </div>             </div>         </div>     </form>    <%-- <!-- jQuery -->     <script src="../vendor/jquery/jquery.min.js"></script>      <!-- Bootstrap Core JavaScript -->     <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>      <!-- Metis Menu Plugin JavaScript -->     <script src="../vendor/metisMenu/metisMenu.min.js"></script>      <!-- Custom Theme JavaScript -->     <script src="../dist/js/sb-admin-2.js"></script>--%>  </asp:Content>  