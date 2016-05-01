<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="join.aspx.cs" Inherits="TPweb3.join" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="container">
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
        <div class="col-sm-4 col-lg-4 col-md-4">
            <h2>Registrese en MasterChuf</h2>
            <br />
            <asp:TextBox ID="txbNombre" runat="server" type="text" class="form-control" placeholder="Ingrese su nombre completo"></asp:TextBox>
            <br />
            <asp:TextBox ID="txbmail" runat="server" type="text" class="form-control" placeholder="Ingrese E-mail"></asp:TextBox>
            <br />
            <asp:TextBox ID="txbcontraseña" runat="server" type="text" class="form-control" placeholder="Ingrese contraseña"></asp:TextBox>
            <br />
            <asp:TextBox ID="txbReContraseña" runat="server" type="text" class="form-control" placeholder="Ingrese contraseña"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DDLperfil" runat="server" class="form-control">
                <asp:ListItem>-Elegir una opcion-</asp:ListItem>
                <asp:ListItem>Cocinero</asp:ListItem>
                <asp:ListItem>Comenzal</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnRegistrar" runat="server" Text="Ingresar" class="btn btn-default btn-lg btn-block" />
        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>
</asp:Content>
