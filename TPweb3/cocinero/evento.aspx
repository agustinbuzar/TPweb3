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

                <h4>Seleccione una fecha</h4>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#D8D8D8" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#BDBDBD" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="#D8D8D8" BorderWidth="1px" Font-Bold="True" Font-Size="12pt" ForeColor="#424242" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>

                <h4>Descripción</h4>
                <textarea id="TextArea1" class="form-control" rows="3"></textarea>

                <h4>Recetas</h4>
                <div class="checkbox">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" type="checkbox">
                        <asp:ListItem>Receta1</asp:ListItem>
                        <asp:ListItem>Receta2</asp:ListItem>
                    </asp:CheckBoxList>
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
