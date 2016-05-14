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
            <asp:RequiredFieldValidator ErrorMessage="Ingrese su nombre completo" ControlToValidate="txbNombre" runat="server" ForeColor="Red" />
            <br />

            <asp:TextBox ID="txbmail" runat="server" type="text" class="form-control" placeholder="Ingrese E-mail"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Ingrese un E-mail" ControlToValidate="txbmail" runat="server" ForeColor="Red" Display="Dynamic"/>
            <asp:RegularExpressionValidator ErrorMessage="Ingrese un E-mail valido" ControlToValidate="txbmail" runat="server" ValidationExpression="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" Display="Dynamic" ForeColor="Red" />
            <br />

            <asp:TextBox ID="txbContraseña" runat="server" type="password" class="form-control" placeholder="Ingrese contraseña"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Ingrese una contraseña" ControlToValidate="txbcontraseña" runat="server" ForeColor="Red" Display="Dynamic"/>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ErrorMessage="La contraseña debe tener un minimo de 8 caracteres, 1 numero y empezar con mayuscula" ValidationExpression="(?=^.{8,}$)(?=.*\d)(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" ControlToValidate="txbContraseña" runat="server" Display="Dynamic" ForeColor="Red"/>
            <br />

            <asp:TextBox ID="txbReContraseña" runat="server" type="password" class="form-control" placeholder="Ingrese contraseña"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Repita la contraseña" ControlToValidate="txbReContraseña" runat="server" ForeColor="Red" Display="Dynamic" />
            <asp:CompareValidator ErrorMessage="Las contraseñas deben ser iguales" ControlToValidate="txbReContraseña" ControlToCompare="txbContraseña" runat="server" ForeColor="Red" Display="Dynamic" />
            <br />

            <asp:DropDownList ID="DDLperfil" runat="server" class="form-control">
                <asp:ListItem>-Elegir una opcion-</asp:ListItem>
                <asp:ListItem>Cocinero</asp:ListItem>
                <asp:ListItem>Comenzal</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ErrorMessage="Seleccione una opción" ControlToValidate="DDLperfil" InitialValue="-Elegir una opcion-" runat="server" ForeColor="Red" Display="Dynamic"/>
            <br />


            <asp:Button ID="btnRegistrar" runat="server" Text="Ingresar" class="btn btn-default btn-lg btn-block" OnClick="btnRegistrar_Click" />
        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>
</asp:Content>
