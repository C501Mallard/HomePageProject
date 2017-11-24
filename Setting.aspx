<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Setting.aspx.cs" Inherits="Setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .row {
            font-size: 14pt;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">設定</h1>
            </div>
            <!-- /.col-lg-12 -->
        <table class="table1" style="width: 75%; height:350px">
            <tr class="panel panel-warning">
                <td colspan="2" class="panel-heading">通知設定</td>
            </tr>
           <tr>
                <td class="col-md-9 fa-text-width glyphicon-text-color">接收推播</td>
                <td class="col-md-3 text-right">
                    <input id="Checkbox1" type="checkbox" />                    
                </td>
            </tr>            
            <tr>
                <td class="col-md-9 fa-text-width">新訊息提醒</td>
               <td class="col-md-3 text-right">
                    <input id="Checkbox2" type="checkbox" />                    
                </td>
            </tr>
             <tr>
                <td class="col-md-9 fa-text-width">新工作提醒</td>
               <td class="col-md-3 text-right">
                    <input id="Checkbox3" type="checkbox" />                    
                </td>
            </tr>
            
             <tr class="panel panel-warning">
                <td colspan="2" class="panel-heading">一般設定</td>
            </tr>
           <tr>
                <td class="col-md-9 fa-text-width glyphicon-text-color">字型大小</td>
                <td class="col-md-3 text-right">
                    <select id="Select1">
                        <option>正常</option>
                        <option>較大</option>
                        <option>較小</option>
                    </select>
                </td>
            </tr>            
            <tr>
                <td class="col-md-9 fa-text-width">清除暫存資料</td>
               <td class="col-md-3 text-right">
                                     
                </td>
            </tr>    
             <tr class="panel panel-warning">
                <td colspan="2" class="panel-heading">會員設定</td>
            </tr>
           <tr>
                <td class="col-md-9 fa-text-width glyphicon-text-color">服務條款</td>
                <td class="col-md-3 text-right">
                                     
                </td>
            </tr>            
            <tr>
                <td class="col-md-9 fa-text-width">隱私權政策</td>
               <td class="col-md-3 text-right">
                                       
                </td>
            </tr>             
         
        </table>

    </div>
</asp:Content>

