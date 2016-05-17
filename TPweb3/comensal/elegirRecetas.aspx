<%@ Page Title="" Language="C#" MasterPageFile="~/Comensal.Master" AutoEventWireup="true" CodeBehind="elegirRecetas.aspx.cs" Inherits="TPweb3.comensal.elegirRecetas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="formElegirRecetas" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6 center">

                    <h1>Elegir las recetas</h1>
                    <hr />

                    <asp:CheckBoxList ID="cblElegirRecetas" runat="server" CssClass="checkbox" ValidationGroup="VGEdit"></asp:CheckBoxList>
                    <asp:CustomValidator runat="server" ID="cvmodulelist"
                        ClientValidationFunction="ValidateModuleList" OnServerValidate="cvElegirRecetas_ServerValidate"
                        ErrorMessage="Seleccione al menos una receta" ForeColor="Red"></asp:CustomValidator>

                    <div class="row">
                        <div class="col-lg-6">Cantidad de personas</div>
                        <div class="col-lg-6">
                            <asp:TextBox ID="txbCantPersonas" runat="server" type="text" class="form-control" Width="100%" />
                            <asp:RequiredFieldValidator ID="rfvCantPersonas" ErrorMessage="Ingrese la cantidad de personas" ControlToValidate="txbCantPersonas" runat="server" ForeColor="Red" Display="Dynamic" />  
                            <asp:CompareValidator ID="rvCantPersonas" ErrorMessage="Ingrese un valor numérico" ControlToValidate="txbCantPersonas" runat="server" Type="Integer" Operator="DataTypeCheck" ForeColor="Red" Display="Dynamic"/>
                        </div>
                        <br />
                        <br />
                        <br />
                    </div>

                    <asp:Button ID="btnReservarEvento" runat="server" Text="Reservar evento" class="btn btn-default btn-lg btn-block" OnClick="btnReservarEvento_Click" />

                    <asp:Label ID="lblServidor" runat="server"></asp:Label>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
        </div>
    </form>

    <script type="text/javascript">
        function verifyCheckboxList(source, arguments) {
            var val = document.getElementById("<%# cblElegirRecetas.ClientID %>");
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
