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

                    <asp:Label ID="Label12" runat="server" Text="Select up to 3 Business Types" CssClass="label_black"></asp:Label>
                    <asp:TextBox ID="txtCheckbox" runat="server" ValidationGroup="testGroup" Style='display: none;' />

                    <asp:RequiredFieldValidator ID="valCheckboxList" Display="Dynamic"
                        ErrorMessage="At least one business type must be selected"
                        runat="server" ControlToValidate="txtCheckbox"
                        ValidationGroup="VGEdit" EnableClientScript="true" CssClass="ErrorLabel_10"
                        SetFocusOnError="true"  ForeColor="Red" />

                    <script type="text/javascript">
                        $(function () {
                            function checkBoxClicked() {
                                //Get the total of selected CheckBoxes
                                var n1 = $("#<%= cblBusinessType.ClientID %> input:checked").length;
                                //Set the value of the txtCheckbox control
                                $("input:#<%= txtCheckbox.ClientID %>").val(n1 == 0 ? "" : n1);
                            }
                            //intercept any check box click event inside the #list Div
                            $("#<%= cblBusinessType.ClientID %> :checkbox").click(checkBoxClicked);

                        });
                    </script>

                </div>

                <div class="row">
                    <div class="col-sm-9 col-lg-9 col-md-9">
                        <h4>Cantidad máxima de comenzales</h4>
                    </div>
                    <div class="col-sm-3 col-lg-3 col-md-3">
                        <asp:TextBox ID="txbCantComenzales" runat="server" type="text" class="form-control" Width="60px"></asp:TextBox>
                    </div>
                </div>

                <h4>Dirección completa</h4>
                <asp:TextBox ID="TxbDireccion" runat="server" type="text" class="form-control" Width="100%"></asp:TextBox>

                <h4>Subir foto</h4>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />

                <asp:Button ID="btnCrearEvento" runat="server" Text="Crear evento" class="btn btn-default btn-lg btn-block" OnClick="btnCrearEvento_Click" />
            </form>

        </div>
        <div class="col-sm-4 col-lg-4 col-md-4"></div>
    </div>
</asp:Content>
