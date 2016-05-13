<%@ Page Title="" Language="C#" MasterPageFile="~/Comensal.Master" AutoEventWireup="true" CodeBehind="reservar.aspx.cs" Inherits="TPweb3.comensal.reservar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <h1>Reservar:</h1> <hr />
                <asp:GridView ID="grillaEventos" runat="server">
                    <Columns>
                        <asp:ButtonField CommandName="Cancel" HeaderText="botoncito" ShowHeader="True" Text="Button" />
                    </Columns>
                </asp:GridView>
            </div>
            <div class="col-lg-3">

            </div>
        </div>
    </div>
    </form>
</asp:Content>
