﻿<%@ Page Language="C#" MasterPageFile="~/ControlRoom/Control.Master" 
    AutoEventWireup="true" CodeBehind="TenantAddEdit.aspx.cs" Inherits="GRA.SRP.ControlRoom.Modules.Tenant.TenantAddEdit" 

%>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ValidationSummary ID="ValidationSummaryMain" runat="server" 
        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
        CssClass="ValidationSummary" Font-Bold="True" Font-Size="11px" 
        HeaderText="There are errors, and no action was taken"  Font-Names="Verdana"  
        />


    <asp:DetailsView ID="dv" runat="server" DataSourceID="odsData"
        onitemcommand="DvItemCommand" ondatabinding="dv_DataBinding" 
        ondatabound="dv_DataBound"
        Width="100%"
        >
        <Fields>


        <asp:TemplateField>
		    <EditItemTemplate>

                <table width="100%">
                    <tr>
                        <td nowrap width="175px">
                            <b>Org. Name: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="Name" runat="server" Text='<%# Eval("Name") %>' ReadOnly="False"  Width="400px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                ControlToValidate="Name" Display="Dynamic" ErrorMessage="Name is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap>
                            <b>Landing Page Name: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="LandingName" runat="server" Text='<%# Eval("LandingName") %>' ReadOnly="False"   Width="400px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="LandingName" Display="Dynamic" ErrorMessage="Landing Name is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap>
                            <b>Admin Name: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="AdminName" runat="server" Text='<%# Eval("AdminName") %>' ReadOnly="False"   Width="400px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="AdminName" Display="Dynamic" ErrorMessage="Admin Name is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap>
                            <b>Domain Name: (http:\\)</b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="DomainName" runat="server" Text='<%# Eval("DomainName") %>' ReadOnly="False"   Width="400px"></asp:TextBox>
                        </td>
                    </tr>                
                    <tr>
                        <td nowrap valign="top">
                            <b>Landing Page Desc.: </b>
                        </td>
                        <td  colspan="2"  valign="top" style="height: 250px;">
                            <CKEditor:CKEditorControl ID="Description" 
                                    BasePath="/ckeditor/" 
                                    runat="server" 
                                    Skin="office2003" 
                                    BodyId="wrapper" 
                                    ContentsCss="/css/EditorStyles.css"
                                    DisableNativeSpellChecker="False" 
                                    DisableNativeTableHandles="False" 
                                    DocType="&lt;!DOCTYPE html&gt;" 
                                    ForcePasteAsPlainText="True" 
                                    Height="150px" UIColor="#D3D3D3" 
                                    Visible="True" 
                                    Width="98%"
                                    Toolbar="Source|-|Preview|-|Cut|Copy|Paste|PasteText|PasteFromWord|-|Undo|Redo|-|Find|Replace|-|SelectAll|RemoveFormat| 
                                    / |Bold|Italic|Underline|Strike|-|Subscript|Superscript|-|NumberedList|BulletedList|-|Outdent|Indent|Blockquote|CreateDiv|-|JustifyLeft|JustifyCenter|JustifyRight|JustifyBlock| 
                                    / |Link|Unlink|Anchor|-|Image|Flash|Table|HorizontalRule|SpecialChar|PageBreak|Iframe|
                                    / |Styles|Format|Font|FontSize|-|TextColor|BGColor|-|ShowBlocks|Maximize|
                                    "
                                    AutoGrowOnStartup="True" 
					                 Text='<%# Eval("Description") %>' 
                                    ></CKEditor:CKEditorControl>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap  valign="top">
                            <b>Other:</b>
                        </td>
                        <td >
                            <asp:CheckBox ID="isActiveFlag" runat="server" Checked='<%# (bool)Eval("isActiveFlag") %>' ReadOnly="False"></asp:CheckBox> &nbsp;Is Active
                            <hr />
                        </td>
                        <td >
                            <asp:CheckBox ID="isMasterFlag" runat="server" Checked='<%# (bool)Eval("isMasterFlag") %>' ReadOnly="True" Enabled="false"></asp:CheckBox> &nbsp;Is "Master"
                            <hr />

                        </td>
                    </tr>                      
                </table>

                
            </EditItemTemplate>
            <InsertItemTemplate>
                <table width="100%">
                    <tr>
                        <td nowrap>
                            <b>Org. Name: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="Name" runat="server" Text='' ReadOnly="False"   Width="400px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                ControlToValidate="Name" Display="Dynamic" ErrorMessage="Name is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap>
                            <b>Landing Page Name: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="LandingName" runat="server" Text='' ReadOnly="False"   Width="400px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="LandingName" Display="Dynamic" ErrorMessage="Landing Name is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap>
                            <b>Admin Name: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="AdminName" runat="server" Text='' ReadOnly="False"   Width="400px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="AdminName" Display="Dynamic" ErrorMessage="Admin Name is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap>
                            <b>Domain Name: (http:\\)</b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="DomainName" runat="server" Text='' ReadOnly="False"   Width="400px"></asp:TextBox>
                        </td>
                    </tr>                
                    <tr>
                        <td nowrap=nowrap valign="top">
                            <b>Landing Page Desc.: </b>
                        </td>
                        <td  colspan="2" style="height: 250px;">
                            <CKEditor:CKEditorControl ID="Description" 
                                    BasePath="/ckeditor/" 
                                    runat="server" 
                                    Skin="office2003" 
                                    BodyId="wrapper" 
                                    ContentsCss="/css/EditorStyles.css"
                                    DisableNativeSpellChecker="False" 
                                    DisableNativeTableHandles="False" 
                                    DocType="&lt;!DOCTYPE html&gt;" 
                                    ForcePasteAsPlainText="True" 
                                    Height="150px" UIColor="#D3D3D3" 
                                    Visible="True" 
                                    Width="98%"
                                    Toolbar="Source|-|Preview|-|Cut|Copy|Paste|PasteText|PasteFromWord|-|Undo|Redo|-|Find|Replace|-|SelectAll|RemoveFormat| 
                                    / |Bold|Italic|Underline|Strike|-|Subscript|Superscript|-|NumberedList|BulletedList|-|Outdent|Indent|Blockquote|CreateDiv|-|JustifyLeft|JustifyCenter|JustifyRight|JustifyBlock| 
                                    / |Link|Unlink|Anchor|-|Image|Flash|Table|HorizontalRule|SpecialChar|PageBreak|Iframe|
                                    / |Styles|Format|Font|FontSize|-|TextColor|BGColor|-|ShowBlocks|Maximize|
                                    "
                                    AutoGrowOnStartup="True" 
					                 Text='' 
                                    ></CKEditor:CKEditorControl>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap  valign="top">
                            <b>Other:</b>
                        </td>
                        <td >
                            <asp:CheckBox ID="isActiveFlag" runat="server" Checked='True' ReadOnly="False"></asp:CheckBox> &nbsp;Is Active
                            <hr />
                        </td>
                        <td >
                            <asp:CheckBox ID="isMasterFlag" runat="server" Checked='False' ReadOnly="True" Enabled="false"> </asp:CheckBox> &nbsp;Is "Master"
                            <hr />

                        </td>
                    </tr> 
                    <td nowrap>
                            <b>Sysadmin Login: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="sysadmin" runat="server" Text='' ReadOnly="False"   Width="400px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="sysadmin" Display="Dynamic" ErrorMessage="Sysadmin login is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revStrength1" runat="server" 
                                ControlToValidate="sysadmin" Display="Dynamic" ErrorMessage="Sysadmin Login must be at least 7 characters long and have no spaces" 
                                ValidationExpression="^(?=.*[A-Za-z0-9])(?!.*[^A-Za-z0-9])(?!.*\s).{8,50}" SetFocusOnError="False" Font-Bold="True"> * Strength
                            </asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <td nowrap>
                            <b>Sysadmin First Name: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="fname" runat="server" Text='' ReadOnly="False"   Width="400px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="fname" Display="Dynamic" ErrorMessage="Sysadmin First Name is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <td nowrap>
                            <b>Sysadmin Last Name: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="lname" runat="server" Text='' ReadOnly="False"   Width="400px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="lname" Display="Dynamic" ErrorMessage="Sysadmin Last Name is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <td nowrap>
                            <b>Sysadmin email: </b>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="email" runat="server" Text='' ReadOnly="False"   Width="400px"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="email" Display="Dynamic" ErrorMessage="Sysadmin email is required" 
                                SetFocusOnError="True" Font-Bold="True"><font color='red'> * Required </font></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="email" Display="Dynamic" 
                                ErrorMessage="Email address is not valid." 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> * Invalid</asp:RegularExpressionValidator>
                        </td>
                    </tr>                     
                </table>


            </InsertItemTemplate>
            <ItemTemplate>
                
            </ItemTemplate>
            <HeaderStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Top" />    
        </asp:TemplateField>

       
            <asp:BoundField DataField="LastModDate" HeaderText=" Modified Date: " HeaderStyle-Wrap="False"
                SortExpression="LastModDate" InsertVisible="False" ReadOnly="True" Visible="false">
            <HeaderStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Top" />    
            </asp:BoundField>

            <asp:BoundField DataField="LastModUser" HeaderText="Modified By: " HeaderStyle-Wrap="False"
                SortExpression="LastModUser" InsertVisible="False" ReadOnly="True"  Visible="false">
            <HeaderStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Top" />    
            </asp:BoundField>

            <asp:BoundField DataField="AddedDate" HeaderText="Added Date: " HeaderStyle-Wrap="False"
                SortExpression="AddedDate" InsertVisible="False" ReadOnly="True"  Visible="false">
            <HeaderStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Top" />    
            </asp:BoundField>

            <asp:BoundField DataField="AddedUser" HeaderText="Added By: " HeaderStyle-Wrap="False"
                SortExpression="AddedUser" InsertVisible="False" ReadOnly="True"  Visible="false">
            <HeaderStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Top" />    
            </asp:BoundField>

            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:ImageButton ID="btnBack" runat="server" 
                        CausesValidation="false" 
                        CommandName="Back" 
                        ImageUrl="~/ControlRoom/Images/back.png" 
                        Height="25"
                        Text="Back/Cancel"  Tooltip="Back/Cancel"
                        AlternateText="Back/Cancel" />
                </ItemTemplate>
                <InsertItemTemplate>
                    <asp:ImageButton ID="btnBack" runat="server" 
                        CausesValidation="false" 
                        CommandName="Back" 
                        ImageUrl="~/ControlRoom/Images/back.png"
                        Height="25"
                        Text="Back/Cancel"    Tooltip="Back/Cancel"
                        AlternateText="Back/Cancel" />
                        &nbsp;
                    <asp:ImageButton ID="btnAdd" runat="server" 
                        CausesValidation="True" 
                        CommandName="Add" 
                        ImageUrl="~/ControlRoom/Images/add.png" 
                        Height="25"
                        Text="Add"   Tooltip="Add"
                        AlternateText="Add" /> 

                </InsertItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton ID="btnBack" runat="server" 
                        CausesValidation="false" 
                        CommandName="Back" 
                        ImageUrl="~/ControlRoom/Images/back.png" 
                        Height="25"
                        Text="Back/Cancel"   Tooltip="Back/Cancel"
                        AlternateText="Back/Cancel" />
                        &nbsp;
                        &nbsp;
                    <asp:ImageButton ID="btnRefresh" runat="server" 
                        CausesValidation="false" 
                        CommandName="Refresh" 
                        ImageUrl="~/ControlRoom/Images/refresh.png" 
                        Height="25"
                        Text="Refresh Record"    Tooltip="Refresh Record"
                        AlternateText="Refresh Record" /> 
                        &nbsp;
                    <asp:ImageButton ID="btnSave" runat="server" 
                        CausesValidation="True" 
                        CommandName="Save"
                        ImageUrl="~/ControlRoom/Images/save.png" 
                        Height="25"
                        Text="Save"   Tooltip="Save"
                        AlternateText="Save"/>  
                        &nbsp;
                    <asp:ImageButton ID="btnSaveback" runat="server" 
                        CausesValidation="True" 
                        CommandName="Saveandback" 
                        ImageUrl="~/ControlRoom/Images/saveback.png" 
                        Height="25"
                        Text="Save and return"   Tooltip="Save and return"
                        AlternateText="Save and return" />    
                </EditItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>

    <asp:Label ID="lblPK" runat="server" Text="" Visible="False"></asp:Label>
	<asp:ObjectDataSource ID="odsData" runat="server" 
        SelectMethod="FetchObject" 
        TypeName="GRA.SRP.Core.Utilities.Tenant">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblPK" Name="TenID" 
                PropertyName="Text" Type="Int32" />
        </SelectParameters>
	</asp:ObjectDataSource>

    <!--

    <asp:Button ID="Button1" runat="server" 
        Text="Wipe Out This Tenant and Clean Orphaned Images" onclick="Button1_Click" />

    -->

</asp:Content>

