<%@ Page Title="" Language="C#" MasterPageFile="~/Comensal.Master" AutoEventWireup="true" CodeBehind="calificarEvento.aspx.cs" Inherits="TPweb3.comensal.calificarEvento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="formCalificarEvento" runat="server">
        <div class="container">

            <div class="col-sm-4 col-lg-4 col-md-4"></div>
            <div class="col-sm-4 col-lg-4 col-md-4 center">

                <h1>Calificar un evento</h1>
                <br />

                <div class="col-md-6">
                    <h4>Calificación</h4>
                </div>
                <div class="col-md-6 center">
                    <asp:TextBox ID="txbCalificacion" runat="server" type="text" class="form-control" Width="100%"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Ingrese una calificación" ControlToValidate="txbCalificacion" runat="server" ForeColor="Red" Display="Dynamic"/>
                    <asp:RangeValidator ErrorMessage="Ingrese un valor numerico de 1 a 5" ControlToValidate="txbCalificacion" runat="server" Type="Integer" MaximumValue="5" MinimumValue="1" ForeColor="Red" Display="Dynamic"/>
                    <br />
                </div>

                <h4>Comentarios</h4>
                <asp:TextBox ID="txbComentatioCalificacion" runat="server" TextMode="MultiLine" Rows="5" class="form-control" Width="100%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvComentarioCalificacion" ErrorMessage="Ingrese un comentario" ControlToValidate="txbComentatioCalificacion" runat="server" ForeColor="Red" Display="Dynamic"/>
                <br />

                <asp:Button ID="btnCalificarEvento" runat="server" Text="Calificar" class="btn btn-default btn-lg btn-block" OnClick="btnCalificarEvento_Click" />

                <asp:Label ID="lblErrorServidor" runat="server"></asp:Label>
            </div>
            <div class="col-sm-4 col-lg-4 col-md-4"></div>
        </div>
    </form>
</asp:Content>
