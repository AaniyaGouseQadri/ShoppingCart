<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="KongPosh_ShoppingCart.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblItems" runat="server" style="margin-left:500px;font:900; font-family:'Kristen ITC'"/>
    <div class="container-fluid">
        <div class="col-md-12" style="font-family:'Kristen ITC'; margin-left:200px; border-spacing:30px">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1"  RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" CssClass="auto-style2">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td class="text-center">Product ID
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("ProductImage") %>' Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Rs.
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCart" runat="server" CommandName="AddToCartBtn" CommandArgument='<%#Eval("ProductID") %>' Text="Add To Cart" />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
        </div>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [ProductID], [ProductName], [Price], [ProductImage] FROM [tblProducts]"></asp:SqlDataSource>
</asp:Content>
