<%@ Page Title="" Language="C#" MasterPageFile="~/A_HOME.master" AutoEventWireup="true" CodeFile="A_HOME_CHILD.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/A_home.css" rel="stylesheet" />
    <body>

        <br />
        <br />
        <br />

       

            
       
        <div>

           <h1> <asp:Label ID="Label2" runat="server" Text="WELCOME" ></asp:Label>
            <asp:Label ID="Label1" runat="server"></asp:Label> </h1>

        </div>


        <div>
            <div>
               <h3> <asp:Label ID="Label4" runat="server" Text="Faculty Details"></asp:Label> </h3>
            </div>
            <div>
                <div>
                    <asp:GridView ID="GridView1" CssClass="table table-responsive text-uppercase" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>

                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Button ID="Button1" OnClick="Button1_click" CssClass="btn btn-danger" runat="server" Text="Insert" ValidationGroup="INSERT" />
                                </FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="ID" SortExpression="ID">
                                <EditItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("ID") %>'></asp:Label>

                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBox5" CssClass="text-danger text-uppercase" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required ID" ValidationGroup="INSERT" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="NAME" SortExpression="NAME">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NAME") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("NAME") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBox3" CssClass="text-danger text-uppercase" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="INSERT" runat="server" ErrorMessage="Required NAME" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="PASSWORD" SortExpression="PASSWORD">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PASSWORD") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("PASSWORD") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBox4" CssClass="text-danger text-uppercase" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="INSERT" runat="server" ErrorMessage="Required Password" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateField>



                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connect %>" DeleteCommand="DELETE FROM [FA_PASSWORD] WHERE [ID] = @original_ID AND [NAME] = @original_NAME AND [PASSWORD] = @original_PASSWORD" InsertCommand="INSERT INTO [FA_PASSWORD] ([ID], [NAME], [PASSWORD]) VALUES (@ID, @NAME, @PASSWORD)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FA_PASSWORD]" UpdateCommand="UPDATE [FA_PASSWORD] SET [NAME] = @NAME, [PASSWORD] = @PASSWORD WHERE [ID] = @original_ID AND [NAME] = @original_NAME AND [PASSWORD] = @original_PASSWORD">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ID" Type="String" />
                            <asp:Parameter Name="original_NAME" Type="String" />
                            <asp:Parameter Name="original_PASSWORD" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ID" Type="String" />
                            <asp:Parameter Name="NAME" Type="String" />
                            <asp:Parameter Name="PASSWORD" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="NAME" Type="String" />
                            <asp:Parameter Name="PASSWORD" Type="String" />
                            <asp:Parameter Name="original_ID" Type="String" />
                            <asp:Parameter Name="original_NAME" Type="String" />
                            <asp:Parameter Name="original_PASSWORD" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

        </div>

        <div>
           <h3> <asp:Label ID="Label5" runat="server" Text="Student Details"></asp:Label></h3>
            <div>
                <asp:GridView ID="GridView2" CssClass="table table-responsive text-uppercase" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="REG_NO" DataSourceID="SqlDataSource2" ShowFooter="True">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="Button2" OnClick="Button2_Click" CssClass="btn btn-danger" runat="server" Text="Insert" ValidationGroup="bt2" />
                            </FooterTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="REG_NO" SortExpression="REG_NO">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("REG_NO") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("REG_NO") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="bt2" runat="server" ErrorMessage="Required RegisterNumber" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required Username" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="bt2" runat="server" ErrorMessage="Required Username" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Password" SortExpression="Password">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required Password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="bt2" runat="server" ErrorMessage="Required Password" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>' ControlToValidate="TextBox3"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="E-mail Maditory" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid E-mail" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                           <FooterTemplate>
                               <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Required E-mail" ValidationGroup="bt2" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="bt2" ControlToValidate="TextBox9" ErrorMessage="Invalid E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                               </FooterTemplate>
                        </asp:TemplateField>


                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:connect %>" DeleteCommand="DELETE FROM [ST_PASSWORD] WHERE [REG_NO] = @original_REG_NO AND [UserName] = @original_UserName AND [Password] = @original_Password AND [Email] = @original_Email" InsertCommand="INSERT INTO [ST_PASSWORD] ([REG_NO], [UserName], [Password], [Email]) VALUES (@REG_NO, @UserName, @Password, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ST_PASSWORD]" UpdateCommand="UPDATE [ST_PASSWORD] SET [UserName] = @UserName, [Password] = @Password, [Email] = @Email WHERE [REG_NO] = @original_REG_NO AND [UserName] = @original_UserName AND [Password] = @original_Password AND [Email] = @original_Email">
                    <DeleteParameters>
                        <asp:Parameter Name="original_REG_NO" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_Password" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="REG_NO" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="original_REG_NO" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_Password" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        
    </body>


</asp:Content>

