<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlayGame.aspx.cs" Inherits="PlayGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #FV1 {
            /*width: 80%;*/
            /*align-content:center;*/
            /*margin-top:auto;*/
            /*border:2px solid*/
            /*vertical-align: central;*/
        }

            #FV1 .table1 {
                /*width: 80%;*/
            }

                #FV1 .table1 tr {
                    background-color: #e1d978;
                }

                    #FV1 .table1 tr:nth-child(2n+1) {
                        background-color: #58db83;
                        /*width: 60px;*/
                        text-align: center;
                        color: blue;
                        font-size: large;
                    }

                #FV1 .table1 td {
                    /*border: 1px double red;*/
                }



            #FV1 > tbody > tr:last-child table {
                /*border: 0px;*/
            }

                #FV1 > tbody > tr:last-child table tr td {
                    text-align: left;
                    color: blue;
                }

                #FV1 > tbody > tr:last-child table td span {
                    color: red;
                    font-size: medium;
                }

                #FV1 > tbody > tr:last-child table td a:hover {
                    color: green;
                    font-size: medium;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="form1" runat="server">
        <div class="col-lg-12">
            <h1 class="page-header">玩遊戲</h1>
        </div>
        <div class="container">

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuizBankConnectionString %>"
                SelectCommand="SELECT TOP 10 * FROM [QuizBank] ORDER BY NEWID()"></asp:SqlDataSource>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuizBankConnectionString %>"
                SelectCommand="SELECT * FROM [QuizBank] where Quiz_ID=@Quiz_ID,Qz_Content=@Qz_Content">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Dt2" Name="Quiz_ID" Type="Int64" />
                    <asp:ControlParameter ControlID="Dt2" Name="Qz_Content" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>--%>


            <div class="row">
                <div class="col-xs-12" >
                    <asp:FormView ID="FV1" runat="server" DataSourceID="SqlDataSource2" AllowPaging="true" OnDataBound="FV1_DataBound" style="width: 100%;">
                        <ItemTemplate>
                            <table class="table1" style="width: 100%;">
                                <tr class="panel panel-primary">
                                    <td colspan="2" class="panel-heading">題目</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td class="panel-body">
                                        <asp:Label ID="Qz_ContentLabel" runat="server" Text='<%# Eval("Qz_Content") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="panel panel-primary">
                                    <td colspan="2" class="panel-heading">作答</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td class="panel-body">
                                        <asp:CheckBox ID="Qz_Item1_CheckBox" runat="server" Text='<%# Eval("Qz_Item1") %>' OnCheckedChanged="Qz_Item1_CheckBox_CheckedChanged" />
                                        <br />
                                        <asp:CheckBox ID="Qz_Item2_CheckBox" runat="server" Text='<%# Eval("Qz_Item2") %>' OnCheckedChanged="Qz_Item2_CheckBox_CheckedChanged" />
                                        <br />
                                        <asp:CheckBox ID="Qz_Item3_CheckBox" runat="server" Text='<%# Eval("Qz_Item3") %>' OnCheckedChanged="Qz_Item3_CheckBox_CheckedChanged" />
                                        <br />
                                        <asp:CheckBox ID="Qz_Item4_CheckBox" runat="server" Text='<%# Eval("Qz_Item4") %>' OnCheckedChanged="Qz_Item4_CheckBox_CheckedChanged" />
                                        <br />
                                        <asp:Label ID="L1" runat="server" Visible="false" Text='<%# Eval("Qz_Solution") %>'>
                                                </asp:Label>
                                        <br />
                                        <asp:Button ID="btn_solution" runat="server" Text="Solution" OnClick="btn_solution_Click" CssClass="btn btn-info"/>
                                        <%-- <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                                    <asp:ListItem Text='<%# Eval("Qz_Item1") %>'></asp:ListItem>
                                                    <asp:ListItem Text='<%# Eval("Qz_Item2") %>'></asp:ListItem>
                                                    <asp:ListItem Text='<%# Eval("Qz_Item3") %>'></asp:ListItem>
                                                    <asp:ListItem Text='<%# Eval("Qz_Item4") %>'></asp:ListItem>
                                                </asp:CheckBoxList>--%>
                                            </td>
                                </tr>
                            </table>

                            <%--<asp:Button ID="Qz_Item1_Button" runat="server" Text='<%# Eval("Qz_Item1") %>'></asp:Button>
                                    <br />
                                    <asp:Button ID="Qz_Item2_Button" runat="server" Text='<%# Eval("Qz_Item2") %>'></asp:Button>
                                    <br />
                                    <asp:Button ID="Qz_Item3_Button" runat="server" Text='<%# Eval("Qz_Item3") %>'></asp:Button>
                                    <br />
                                    <asp:Button ID="Qz_Item4_Button" runat="server" Text='<%# Eval("Qz_Item4") %>'></asp:Button>--%>

                            <%--Qz_Content:
                                    <asp:Label ID="Qz_ContentLabel" runat="server" Text='<%# Bind("Qz_Content") %>' />
                                    <br />
                                    Qz_Item1:
                                    <asp:Label ID="Qz_Item1Label" runat="server" Text='<%# Bind("Qz_Item1") %>' />
                                    <br />
                                    Qz_Item2:
                                    <asp:Label ID="Qz_Item2Label" runat="server" Text='<%# Bind("Qz_Item2") %>' />
                                    <br />
                                    Qz_Item3:
                                    <asp:Label ID="Qz_Item3Label" runat="server" Text='<%# Bind("Qz_Item3") %>' />
                                    <br />
                                    Qz_Item4:
                                    <asp:Label ID="Qz_Item4Label" runat="server" Text='<%# Bind("Qz_Item4") %>' />
                                     <br />
                                    <asp:LinkButton ID="Qz_Item1" runat="server" Text='<%# Eval("Qz_Item1") %>'></asp:LinkButton>
                                    <br />
                                    <asp:LinkButton ID="Qz_Item2" runat="server" Text='<%# Eval("Qz_Item2") %>'></asp:LinkButton>
                                    <br />
                                    <asp:LinkButton ID="Qz_Item3" runat="server" Text='<%# Eval("Qz_Item3") %>'></asp:LinkButton>
                                    <br />
                                    <asp:LinkButton ID="Qz_Item4" runat="server" Text='<%# Eval("Qz_Item4") %>'></asp:LinkButton>
                                    <br />--%>
                        </ItemTemplate>
                        <%-- <PagerSettings Mode="NextPreviousFirstLast" FirstPageImageUrl="~/first.jpg"
                                    NextPageImageUrl="~/next.jpg" PreviousPageImageUrl="~/prev.jpg"
                                    LastPageImageUrl="~/last.jpg" />
                                <PagerTemplate>--%>
                        <PagerSettings Mode="NextPreviousFirstLast" />
                        <PagerTemplate>
                            <table style="width: 100%;">
                                <tr>
                                    <td style="text-align: center">

                                        <%--加上這兩項 才能用分頁的功能 CommandName="Page" CommandArgument使用 Prev或 Next--%>
                                        <asp:Button ID="lkbPrev" CommandName="Page" CommandArgument="Prev" runat="server" CssClass="btn btn-primary" Text="Prev"></asp:Button>
                                        <asp:Button ID="lkbNext" CommandName="Page" CommandArgument="Next" runat="server" CssClass="btn btn-primary" Text="Next"></asp:Button>

                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Label ID="lblPageInfo" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </PagerTemplate>

                        
                    </asp:FormView>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-8">
                </div>
            </div>



            <div class="row">
                <div class="col-md-6">
                    <%--<div class="panel panel-primary">
                        <div class="panel-heading">
                            題目
                        </div>
                        <div class="panel-body">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="table table-bordered table-hover table-striped" PagerStyle-HorizontalAlign="Center" DataKeyNames="Quiz_ID" AllowPaging="true" PageSize="1">
                                <Columns>--%>
                    <%--<asp:BoundField DataField="Quiz_ID" HeaderText="NO" SortExpression="Quiz_ID" />--%>
                    <%--<asp:BoundField DataField="Qz_Content" HeaderText="題目" SortExpression="Qz_Content" />
                                </Columns>
                            </asp:GridView>
                        </div>--%>
                    <%--<div class="panel-footer">--%>

                    <%--<asp:Button ID="btn1" runat="server" CssClass="btn btn-primary" Text="OK" />--%>
                    <%--<asp:Button ID="btn2" runat="server" CssClass="btn btn-default" Text="Cancel" />--%>
                    <%--<button class="btn btn-primary">OK</button>--%>
                    <%--<button class="btn btn-default">Cancel</button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                </div>
                <div class="col-md-6">
                    <%--<div class="panel panel-primary">
                        <div class="panel-heading">
                            作答
                        </div>
                        <div class="panel-body">


                            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <table class="table1">
                                        <tr>
                                            <td>題目</td>
                                            <td></td>    
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <asp:Label ID="Qz_ContentLabel" runat="server" Text='<%# Bind("Qz_Content") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>作答</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <asp:CheckBox ID="Qz_Item1_CheckBox" runat="server" Text='<%# Eval("Qz_Item1") %>' />
                                                <br />
                                                <asp:CheckBox ID="Qz_Item2_CheckBox" runat="server" Text='<%# Eval("Qz_Item2") %>' />
                                                <br />
                                                <asp:CheckBox ID="Qz_Item3_CheckBox" runat="server" Text='<%# Eval("Qz_Item3") %>' />
                                                <br />
                                                <asp:CheckBox ID="Qz_Item4_CheckBox" runat="server" Text='<%# Eval("Qz_Item4") %>' />
                                            </td>
                                        </tr>
                                    </table>--%>

                    <%--<asp:Button ID="Qz_Item1_Button" runat="server" Text='<%# Eval("Qz_Item1") %>'></asp:Button>
                                    <br />
                                    <asp:Button ID="Qz_Item2_Button" runat="server" Text='<%# Eval("Qz_Item2") %>'></asp:Button>
                                    <br />
                                    <asp:Button ID="Qz_Item3_Button" runat="server" Text='<%# Eval("Qz_Item3") %>'></asp:Button>
                                    <br />
                                    <asp:Button ID="Qz_Item4_Button" runat="server" Text='<%# Eval("Qz_Item4") %>'></asp:Button>--%>

                    <%--Qz_Content:
                                    <asp:Label ID="Qz_ContentLabel" runat="server" Text='<%# Bind("Qz_Content") %>' />
                                    <br />
                                    Qz_Item1:
                                    <asp:Label ID="Qz_Item1Label" runat="server" Text='<%# Bind("Qz_Item1") %>' />
                                    <br />
                                    Qz_Item2:
                                    <asp:Label ID="Qz_Item2Label" runat="server" Text='<%# Bind("Qz_Item2") %>' />
                                    <br />
                                    Qz_Item3:
                                    <asp:Label ID="Qz_Item3Label" runat="server" Text='<%# Bind("Qz_Item3") %>' />
                                    <br />
                                    Qz_Item4:
                                    <asp:Label ID="Qz_Item4Label" runat="server" Text='<%# Bind("Qz_Item4") %>' />
                                     <br />
                                    <asp:LinkButton ID="Qz_Item1" runat="server" Text='<%# Eval("Qz_Item1") %>'></asp:LinkButton>
                                    <br />
                                    <asp:LinkButton ID="Qz_Item2" runat="server" Text='<%# Eval("Qz_Item2") %>'></asp:LinkButton>
                                    <br />
                                    <asp:LinkButton ID="Qz_Item3" runat="server" Text='<%# Eval("Qz_Item3") %>'></asp:LinkButton>
                                    <br />
                                    <asp:LinkButton ID="Qz_Item4" runat="server" Text='<%# Eval("Qz_Item4") %>'></asp:LinkButton>
                                    <br />--%>
                    <%-- </ItemTemplate>
                            </asp:FormView>--%>




                    <%--<div class="btn-group-vertical" data-toggle="buttons">
                                <label class="col1 btn btn-secondary active">
                                    <input type="checkbox" checked autocomplete="off" />
                                    Checkbox 1 (pre-checked)
                                </label>
                                <label class="col2 btn btn-secondary">
                                    <input type="checkbox" autocomplete="off" />
                                    Checkbox 2
                                </label>
                                <label class="col3 btn btn-secondary">
                                    <input type="checkbox" autocomplete="off" />
                                    Checkbox 3
                                </label>
                            </div>--%>
                    <%--</div>
                        <div class="panel-footer">
                            <asp:Button ID="Last" runat="server" CssClass="btn btn-primary" Text="Last" />--%>
                    <%--<asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-secondary" DataSourceID="SqlDataSource2" DataTextField="Quiz_ID" DataValueField="Quiz_ID">--%>

                    <%--<asp:ListItem Value="Quiz_ID"></asp:ListItem>--%>
                    <%--</asp:DropDownList>--%>
                    <%-- <asp:Button ID="Next" runat="server" CssClass="btn btn-primary" Text="Next" />
                        </div>
                    </div>--%>
                </div>
            </div>

        </div>
    </form>
   <%-- <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>--%>

</asp:Content>

