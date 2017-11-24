<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="Personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .table1 {
            font-size: medium;
            font-style: oblique;
            /*background-color:aliceblue;*/
        }
        /*#per1{
            float:right;
        }*/
        /*#Button1{
            border:1px;
            margin:inherit;
        }*/
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">基本資料</h1>
        </div>
        <!-- /.col-lg-12 -->
        <table class="table1" style="width: 80%; height: 300px ;align-items: center" >
            <tr>
                <td class="col-md-2 fa-text-width glyphicon-text-color">用戶暱稱:</td>
                <td class="col-md-10 text-left">
                    <input id="Text1" type="text" />
                </td>
            </tr>
            <tr>
                <td class="col-md-2 fa-text-width">登入帳號:</td>
                <td class="col-md-10 text-left">
                    <input id="Text2" type="text" /></td>
            </tr>
            <tr>
                <td class="col-md-2 fa-text-width">生日:</td>
                <td class="col-md-10 text-left">
                    <input id="Text3" type="text" />
                </td>
            </tr>
            <tr>
                <td class="col-md-2 fa-text-width">性別:</td>
                <td class="col-md-10 text-left">
                    <input id="Text4" type="text" /></td>
            </tr>
            <tr>
                <td class="col-md-2 fa-text-width">密碼變更:</td>
                <td class="col-md-10 text-left">
                    <input id="Text5" type="text" /></td>
            </tr>
            <tr>
                <td class="col-md-2 fa-text-width">聯絡資料:</td>
                <td class="col-md-10 text-left">
                    <input id="Text6" type="text" /></td>
            </tr>
            <%--  <img src="image/personal.jpg" id="per1" />--%>
            <tr >
                <td style="align-items: center">
                    <input id="Button1" type="button" value="確認" /></td>
                <td style="align-items: center">
                    <input id="Button1" type="button" value="修改" /></td>
            </tr>
        </table>
        <br />
        <%--   <div style="align-items:center" >
         <input id="Button1" type="button" value="確認" />
         <input id="Button1" type="button" value="修改" />
          </div>--%>
    </div>
</asp:Content>

