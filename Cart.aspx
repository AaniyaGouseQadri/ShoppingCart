<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="KongPosh_ShoppingCart.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton Text="Continue Shopping" ID="lbLink" PostBackUrl="~/Products.aspx" runat="server" />
            <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="30" OnRowDeleting="GridView1_RowDeleting" >
                <Columns>
                    
                    <asp:BoundField DataField="sno" HeaderText="S.No." />
                    <asp:BoundField DataField="ProductID" HeaderText="Product ID" />                  
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                    <asp:BoundField DataField="Price"  HeaderText="Price" />
                    <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product" ControlStyle-Width="100" ControlStyle-Height="100">
                       <ControlStyle Height="100px" Width="100px"></ControlStyle>
                    </asp:ImageField>
                    <asp:TemplateField HeaderText="Quantity">
                          <ItemTemplate>
                                   <asp:Label ID="lblQty" runat="server"></asp:Label>
                          </ItemTemplate>
                    </asp:TemplateField>
                   <%-- <asp:TemplateField  HeaderText="Total Price" >
                    <ItemTemplate>
                        <asp:Label id="lblCost" runat="server" />
                    </ItemTemplate>
                     </asp:TemplateField>--%>
                    <asp:CommandField DeleteText="Remove " ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" Width="200" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:Label ID="lblFoot" runat="server" />
        </div>
    </form>
</body>
</html>
