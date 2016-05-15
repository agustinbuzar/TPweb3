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
                <asp:TextBox ID="txbNombre" runat="server" type="text" class="form-control" Width="100%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Ingrese el nombre del evento" ControlToValidate="txbNombre" runat="server" ForeColor="Red" Display="Dynamic" />

                <h4>Seleccione una fecha</h4>
                <asp:TextBox ID="txbFecha" runat="server" type="text" class="form-control" TextMode="Date" Width="100%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Ingrese una fecha" ControlToValidate="txbFecha" runat="server" ForeColor="Red" Display="Dynamic" />
                <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Ingrese una fecha valida dd/mm/aaaa" Operator="DataTypeCheck" Type="Date" ControlToValidate="txbFecha" runat="server" ForeColor="Red" Display="Dynamic" />

                <h4>Descripción</h4>
                <asp:TextBox ID="txbDescrip" type="text" class="form-control" runat="server" TextMode="MultiLine" Rows="5" Width="100%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Ingrese una descripción del evento" ControlToValidate="txbDescrip" runat="server" ForeColor="Red" Display="Dynamic" />

                <h4>Recetas</h4>
                <div class="checkbox">
                    <!--    <asp:CheckBoxList ID="cbRecetas" runat="server" type="checkbox">
                        <asp:ListItem>Receta1</asp:ListItem>
                        <asp:ListItem>Receta2</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:CustomValidator ErrorMessage="Debe elejir al menos una reseta"  runat="server" />
                    <asp:ValidationSummary runat="server" />
                  -->

                    <asp:CheckBoxList ID="cblBusinessType" runat="server" CssClass="checkbox" ValidationGroup="VGEdit">
                         <asp:ListItem>Receta1</asp:ListItem>
                        <asp:ListItem>Receta2</asp:ListItem>
                    </asp:CheckBoxList>

                    <asp:CustomValidator runat="server" ID="cvmodulelist"
  ClientValidationFunction="ValidateModuleList" OnServerValidate="cvmodulelist_ServerValidate"
  ErrorMessage="Please Select Atleast one Module" ></asp:CustomValidator>



                </div>

                <div class="row">
                    <div class="col-sm-9 col-lg-9 col-md-9">
                        <h4>Cantidad máxima de comenzales</h4>
                    </div>
                    <div class="col-sm-3 col-lg-3 col-md-3">
                        <asp:TextBox ID="txbCantComenzales" runat="server" type="text" class="form-control" Width="60px"></asp:TextBox>
                    </div>
                    <div class="col-sm-9 col-lg-9 col-md-9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Ingrese Cantidad Maxima de Comenzales" ControlToValidate="txbCantComenzales" runat="server" ForeColor="Red" Display="Dynamic" />
                    </div>
                </div>

                <h4>Dirección completa</h4>
                <asp:TextBox ID="TxbDireccion" runat="server" type="text" class="form-control" Width="100%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Ingrese una Direccion" ControlToValidate="txbDireccion" runat="server" ForeColor="Red" Display="Dynamic" />
                <h4>Subir foto</h4>
                <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Red" />
                <br />

                <asp:Button ID="btnCrearEvento" runat="server" Text="Crear evento" class="btn btn-default btn-lg btn-block" OnClick="btnCrearEvento_Click" />
            </form>

        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>
                        <script type="text/javascript">
                            function verifyCheckboxList(source, arguments) {
                                var val = document.getElementById("<%# cblBusinessType.ClientID %>");
                                var col = val.getElementsByTagName("*");
                                if (col != null) {
                                    for (i = 0; i < col.length; i++) {
                                        if (col.item(i).tagName == "INPUT") {
                                            if (col.item(i).checked) {
                                                arguments.IsValid = true;
                                                return;
                                            }
                                        }
                                    }
                                }
                                arguments.IsValid = false;
                            }
                    </script>
</asp:Content>
