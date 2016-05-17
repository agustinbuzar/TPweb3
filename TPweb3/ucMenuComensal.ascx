<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucMenuComensal.ascx.cs" Inherits="TPweb3.ucMenuComensal" %>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../default.aspx">MasterChuf</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="perfil.aspx">Mis reservas</a>
                </li>
                <li>
                    <a href="reservar.aspx">Reservar</a>
                </li>
                <li>
                    <a href="../default.aspx">Cerrar sesión</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
