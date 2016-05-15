<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TPweb3.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="container">
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
        <div class="col-sm-4 col-lg-4 col-md-4">
            <h1>Ingrese a MasterChuf</h1>
            <asp:TextBox runat="server" ID="txbMail" runat="server" type="text" class="form-control" placeholder="Ingrese E-mail" Width="352px" />  
            <asp:RequiredFieldValidator ErrorMessage="Complete el E-mail" ControlToValidate="txbMail" runat="server"  ForeColor="Red" />
            <br />

            <asp:TextBox ID="txbContraseña" runat="server" type="password" class="form-control" placeholder="Ingrese contraseña" Width="351px"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Ingrese contraseña" ControlToValidate="txbContraseña" runat="server"  ForeColor="Red" />
            <br />

            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn btn-default btn-lg btn-block" OnClick="btnIngresar_Click" />
        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>
</asp:Content>
