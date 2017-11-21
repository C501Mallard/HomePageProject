<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchFA.aspx.cs" Inherits="SearchFA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #tb1td {
            width: 100px;
        }
        #searchlist {
            height: 85%;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="col-lg-12">
        <h1 class="page-header">類別搜尋</h1>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:constr %>" selectcommand="SELECT distinct ClassName FROM FA61"></asp:sqldatasource>
            <asp:dropdownlist id="DropDownList1" runat="server" appenddatabounditems="true" datasourceid="SqlDataSource2" datatextfield="ClassName" autopostback="true">
            </asp:dropdownlist>
            <asp:sqldatasource id="SqlDataSource3" runat="server" connectionstring="<%$ ConnectionStrings:constr %>"
                selectcommand="SELECT * FROM FA61 where ClassName=@ClassName">
                 <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="ClassName" Type="String" />
                </SelectParameters>
            </asp:sqldatasource>
            <hr />
            <%--<div id="searchlist">--%>
                <asp:repeater id="Repeater1" runat="server" datasourceid="SqlDataSource3">
                <ItemTemplate>
                    <div class="panel-group" id="<%#Eval("ChName") %>">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#<%#Eval("ChName") %>" href="#<%#Eval("id_num") %>">
                                        <%#Eval("ChName") %>  ，【 <%#Eval("EngName") %> )】
                                    </a>
                                </h4>
                            </div>
                            <div id="<%#Eval("id_num") %>" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <table class="table1">
                                        <tr>
                                            <td id="tb1td">範圍和劑量：</td>
                                            <td><%#Eval("UsageRangeDosageLimit") %></td>
                                        </tr>
                                        <tr>
                                            <td id="tb1td">使用限制：</td>
                                            <td><%#Eval("UsageLimit") %></td>
                                        </tr>
                                        <tr>
                                            <td id="tb1td">規格：</td>
                                            <td>
                                                <%--<button id="filelink" href="<%#Eval("ClassingFASpec") %>" class="btn-link">檔案下載</button>--%>
                                               <a  href="<%#Eval("ClassingFASpec") %>">檔案下載</a> 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td id="tb1td">類別說明：</td>
                                            <td><%#Eval("ClassDescript") %></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>     
            </asp:repeater>
            </div>
        <%--</div>--%>
    </form>
    <script>
        <%--$('#ClassingFASpeclink').click(function () {
            if ($('<%#Eval("ClassingFASpec") %>') == null) {
                $('#filelink').hide();
            }
            else {
                $('#filelink').addClass();
            }
        });--%>
    </script>
</asp:Content>
