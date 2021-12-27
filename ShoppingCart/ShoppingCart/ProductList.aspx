<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
         CodeBehind="ProductList.aspx.cs" Inherits="ShoppingCart.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
       <!--     <script>
                var va = document.getElementById("btCart");
                console.log(va);
                va.onclick(Redirect("ShoppingCart2.aspx"));
                console.log(va);
            </script>  -->

            <asp:ListView ID="productList" runat="server" 
                DataKeyNames="ProductID" GroupItemCount="4"
                ItemType="ShoppingCart.Models.Product" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <asp:Image runat="server" ImageUrl="~/Images/Logo2.png" BorderStyle="None" style=" Height:100px; "/>
                              <!--      <img src="/Images/Logo.png/ < % #:Item.ImagePath%>"  width="100" height="75" style="border: solid" /></a>  -->     
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <span>
                                            <%#:Item.ProductName%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                                    </span>
                                    <br />
                                    <!-- Add to cart button
                                    <a class="" href="/AddToCart.aspx?productID=< % #:Item.ProductID %>"  >             
                                        <span class="ProductListItem">
                                            <b> Add to cart</b>
                                        </span>           
                                    </a> -->

                                    <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>" class="btn btn-primary">               
                                        <span class="ProductListItem">
                                            <b>Add To Cart<b>
                                        </span>           
                                    </a><br />
                                    <a href="/ShoppingCart2" class="btn">               
                                        <span class="ProductListItem">
                                            <b>Go To Cart<b>
                                        </span>           
                                    </a>
                                   
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>
