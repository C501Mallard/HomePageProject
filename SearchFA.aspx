<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchFA.aspx.cs" Inherits="SearchFA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        
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
            <asp:SqlDataSource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:constr %>" selectcommand="SELECT distinct ClassName FROM FA61"></asp:SqlDataSource>
            <asp:DropDownList id="DropDownList1" runat="server" appenddatabounditems="true" datasourceid="SqlDataSource2" datatextfield="ClassName" autopostback="true">
            </asp:DropDownList>
            <asp:SqlDataSource id="SqlDataSource3" runat="server" connectionstring="<%$ ConnectionStrings:constr %>"
                selectcommand="SELECT * FROM FA61 where ClassName=@ClassName">
                 <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="ClassName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <hr />
            <%--<div id="searchlist">--%>
                <asp:Repeater id="Repeater1" runat="server" datasourceid="SqlDataSource3">
                <ItemTemplate>
                    <div class="panel-group" id="SearchFAlistID">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#SearchFAlistID" href="#<%#Eval("id_num") %>">
                                        <%#Eval("ChName") %>  ，【 <%#Eval("EngName") %> 】
                                    </a>
                                </h4>
                            </div>
                            <div id="<%#Eval("id_num") %>" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <table class="table1">
                                        <tr>
                                            <td>範圍和劑量：</td>
                                            <td><%#Eval("UsageRangeDosageLimit") %></td>
                                        </tr>
                                        <tr>
                                            <td>使用限制：</td>
                                            <td><%#Eval("UsageLimit") %></td>
                                        </tr>
                                        <tr>
                                            <td>規格：</td>
                                            <td>
                                                <%--<button id="filelink" href="<%#Eval("ClassingFASpec") %>" class="btn-link">檔案下載</button>--%>
                                                <%# checkEmptyLink( Eval("ClassingFASpec"))%> 
                                                <%-- <a  href="<%#Eval("ClassingFASpec") %>">檔案下載</a> --%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>類別說明：</td>
                                            <td><%#Eval("ClassDescript") %></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>     
            </asp:Repeater>
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
