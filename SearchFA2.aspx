<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchFA2.aspx.cs" Inherits="SearchFA" %>

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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT distinct ClassName FROM FA61"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource2" DataTextField="ClassName" AutoPostBack="true">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>"
                SelectCommand="SELECT * FROM FA61 where ClassName=@ClassName">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="ClassName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <hr />
            <%--<div id="searchlist">--%>
            <%--<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                    <div class="panel-group" id="SearchFAlistID">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#SearchFAlistID" href="#<%#Eval("id_num") %>">
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
                                                <%# checkEmptyLink( Eval("ClassingFASpec"))%>
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

            </asp:Repeater>--%>
            <asp:Repeater ID="rptResult" runat="server">
               
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
                                                <%# checkEmptyLink( Eval("ClassingFASpec"))%>
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
                
            </asp:Repeater>
            <div style="overflow: hidden;">
                <asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnPage"
                            Style="padding: 4px; margin: 2px; background: #1a9b58; border: solid 1px #666; font: 8pt tahoma;"
                            CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                            runat="server" ForeColor="White" Font-Bold="True"><%# Container.DataItem %>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:Repeater>
            </div>



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
