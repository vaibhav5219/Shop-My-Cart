<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
         CodeBehind="ProductDetails.aspx.cs" Inherits="ShoppingCart.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="productDetail" runat="server" ItemType="ShoppingCart.Models.Product" SelectMethod ="GetProduct" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.ProductName %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Image runat="server" ImageUrl="~/Images/Logo2.png" BorderStyle="None" style=" Height:400px; "/>
                      <!--  <img src="/Images/< %#:Item.ImagePath %>" style="border:solid; height:300px" alt="< %#:Item.ProductName %>"/> -->
                    </td>
                    <td>&nbsp;</td> 
                    <td >
                        <h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;</h1>
                    </td>
                    <td style="vertical-align: top; text-align:left; font-size:20px; ">
                        <b>Description:</b><br /><%#:Item.Description %>
                        <br /><br />
                        <span><b>Price:</b>&nbsp;<%#: String.Format("{0:c}", Item.UnitPrice) %></span>
                        <br /><br />
                        <span><b>Product Number:</b>&nbsp;<%#:Item.ProductID %></span>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>