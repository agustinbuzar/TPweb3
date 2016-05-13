<%@ Page Title="" Language="C#" MasterPageFile="~/Cocinero.Master" AutoEventWireup="true" CodeBehind="evento.aspx.cs" Inherits="TPweb3.cocinero.evento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <div class="container">
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
        <div class="col-sm-4 col-lg-4 col-md-4 center">

            <h1>Crear evento</h1>
            <br />

            <form id="form1" runat="server">
                <h4>Nombre</h4>
                <asp:TextBox ID="txbNombre" runat="server" type="text" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="Ingrese el nombre del evento" ControlToValidate="txbNombre" runat="server" ForeColor="Red" Display="Dynamic"/>

                <h4>Seleccione una fecha</h4>
                <asp:TextBox ID="txbFecha" runat="server" type="text" class="form-control" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="Ingrese una fecha" ControlToValidate="txbFecha" runat="server" ForeColor="Red" Display="Dynamic"/>  
                <asp:CompareValidator ErrorMessage="Ingrese una fecha valida dd/mm/aaaa" Operator="DataTypeCheck" Type="Date" ControlToValidate="txbFecha" runat="server" ForeColor="Red" Display="Dynamic" />
                
                <h4>Descripción</h4>
                <asp:TextBox ID="txbDescrip" type="text" class="form-control" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="Ingrese una descripción del evento" ControlToValidate="txbDescrip" runat="server" ForeColor="Red" Display="Dynamic" />

                <h4>Recetas</h4>
                <div class="checkbox">
                    <asp:CheckBoxList ID="cbRecetas" runat="server" type="checkbox">
                        <asp:ListItem>Receta1</asp:ListItem>
                        <asp:ListItem>Receta2</asp:ListItem>
                    </asp:CheckBoxList>
                    <script>
                        function ValidateCheckBoxList(sender, args) {
                             args.IsValid = false;
                             jQuery(".CheckBoxList").find(":checkbox").each(function() {
                                 if (jQuery(this).attr("checked")) {
                                     args.IsValid = true;
                                    return;
                                 }
                             });
                         }
                    </script>
                </div>

                <div class="row">
                    <div class="col-sm-9 col-lg-9 col-md-9">
                        <h4>Cantidad máxima de comenzales</h4>
                    </div>
                    <div class="col-sm-3 col-lg-3 col-md-3">
                        <asp:TextBox ID="txbCantComenzales" runat="server" type="text" class="form-control"></asp:TextBox>
                    </div>
                </div>

                <h4>Dirección completa</h4>
                <asp:TextBox ID="TxbDireccion" runat="server" type="text" class="form-control"></asp:TextBox>

                <h4>Subir foto</h4>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />

                <asp:Button ID="btnIngresar" runat="server" Text="Crear" class="btn btn-default btn-lg btn-block" />
            </form>

        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>
</asp:Content>
