<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KongPosh_ShoppingCart.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--Slider-->
            <div class="container-fluid" id="Slide" >
          <div class="row col-md-12" >
               
                <div id="slider" class="carousel slide" data-ride="carousel">

                    <ol class="carousel-indicators">
                        <li data-target="#slider" data-slide-to="0" class="active"></li>
                        <li data-target="#slider" data-slide-to="1"></li>
                        <li data-target="#slider" data-slide-to="2"></li>
                        
                    </ol>
                        <div class="carousel-inner" role="listbox">
                        <div class="item active"><img src="Images/Slider/Slider.jpg"/></div>

                         <div class="item"><img src="Images/Slider/rose.jpg"/> </div>  
                       
                         <div class="item"> <img src="Images/Slider/Slider.jpg"/> </div>
                           
                       
                       
                       <a class="left carousel-control" href="#slider" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span></a>
                        <a class="right carousel-control" href="#slider" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span></a>
                    </div>
                </div>
            </div>
        </div>
          
            <!--Slider Ends-->

    <div class="row">
            <div class="col-md-12" id="glance">
                <div id="gPosition">
             <h1 style="margin-left:300px;margin-bottom:50px">Our Products At A Glance</h1>
            <div class="col-md-12">
                <div class="col-md-3"  >
                      <img src="Images/Products/Pink-Peonies.jpg" style="overflow:hidden"  height="200", width="200"  class="img-circle  pImg"/>
                    </div>
                <div class="col-md-3 "  >
                    <img src="Images/Products/EuropeanGardeninPorcelinBowl.jpg" style="overflow:hidden"  height="200", width="200"class="img-circle   pImg" />
                </div>
                 <div class="col-md-3" >
                    <img src="Images/Products/WhiteHydrangeawithRedRoses.jpg" style="overflow:hidden" height="200", width="200" class="img-circle  pImg" />
                </div>
                 <div class="col-md-3"  >
                    <img src="Images/Products/home.jpg" style="overflow:hidden" height="200" width="200" class="img-circle   pImg"/>
                </div>
          </div> 

            </div>
    </div>
                </div>
         
                 
          
    

     <div class="container-fluid" id="footer" >
        <div class="row col-md-12" >
            <h1>Contact Us</h1>
           <div class="col-md-6">
               <table>
                   <tr>
                       <td><p>GET IN TOUCH</p></td>
                   </tr>
                   <tr>
                       <td><p>+919797292565</p></td>
                   </tr>
                   <tr>
                       <td>123 Lalchowk Srinagar</td>
                   </tr>
                   <tr>
                       <td>190001</td>
                   </tr>
               </table>
           </div>
            <div class="col-md-6" >
                <table class="table table-bordered"  style="box-shadow:10px 10px 10px 20px grey; height:300px; width:250px">
                    <tr>
                        <td>  <asp:TextBox runat="server" placeholder="NAME"/></td>
                    </tr>
                    <tr>
                        <td> <asp:TextBox runat="server" placeholder="EMAIL" /></td>
                    </tr>
                    <tr>
                        <td>  <asp:TextBox runat="server" placeholder="PHONE NO." /></td>
                    </tr>
                    <tr>
                        <td> <textarea runat="server" placeholder="COMMENTS" ></textarea></td>
                    </tr>
                    <tr>
                        <td><asp:Button Text="SUBMIT" CssClass="btn-default btn-group-lg" runat="server" /></td>
                    </tr>
                </table>
            </div>

        </div>

    </div>
             

        

</asp:Content>
