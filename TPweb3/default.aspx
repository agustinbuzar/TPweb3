<%@ Page Title="" Language="C#" MasterPageFile="~/Anonimo.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TPweb3.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="content/img/receta1.jpg" alt="" />
                            <div class="caption">
                                <h4 class="pull-right">$24.99</h4>
                                <h4><a href="#">Fiesta de la Salsa Criolla!</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <%--<a href="comentarios.aspx"><p class="pull-right">15 comentarios</p></a>--%>
                                <p class="pull-right"><a href="#" data-toggle="popover" data-placement="bottom" data-content="Muy Buen Evento, Riquisimo el Plato">15 comentarios</a></p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="content/img/receta2.jpg" alt="" />
                            <div class="caption">
                                <h4 class="pull-right">$64.99</h4>
                                <h4><a href="#">Paella de pollo</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 comentarios</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="content/img/receta3.jpg" alt="" />
                            <div class="caption">
                                <h4 class="pull-right">$74.99</h4>
                                <h4><a href="#">Masticar</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 comentarios</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="content/img/img4.jpg" alt="" />
                            <div class="caption">
                                <h4 class="pull-right">$24.99</h4>
                                <h4><a href="#">Taco Mex</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <a href="comentarios.aspx">
                                    <p class="pull-right">15 comentarios</p>
                                </a>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="content/img/img5.jpg" alt="" />
                            <div class="caption">
                                <h4 class="pull-right">$64.99</h4>
                                <h4><a href="#">Bondiolita</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 comentarios</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="content/img/img6.jpg" alt="" />
                            <div class="caption">
                                <h4 class="pull-right">$74.99</h4>
                                <h4><a href="#">Light</a>
                                </h4>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 comentarios</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('[data-toggle="popover"]').popover();
        });
    </script>
</asp:Content>
