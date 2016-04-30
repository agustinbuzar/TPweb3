<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="TPweb3.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="container">
        <asp:HyperLink id="hlLogin" NavigateUrl="login.aspx" runat="server"> 
            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar"  type="button" CssClass="btn btn-default" href="login.aspx"/>
        </asp:HyperLink>
        <asp:HyperLink id="hlRegistrarse" NavigateUrl="registro.aspx" runat="server"> 
            <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse"   type="button" class="btn btn-default"/>
        </asp:HyperLink>

        <div class="row">
            <div class="col-md-4">
                    evento
            </div>
            
            <div class="col-md-4">
                    evento  
            </div>
            
            <div class="col-md-4">
                    evento
            </div>
        
        </div>
    </div>
</asp:Content>
