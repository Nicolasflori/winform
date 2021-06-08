﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ArticulosWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Articulos</h1>
    </div>
    <div class="row">
        <% foreach (Dominio.Articulos item in lista)
            {%>
        <div class="card border-dark mb-3 ml-3" style="max-width: 18rem;">
            <img src="<%=item.ImagenURl%>" class="card-img-top embed-responsive-item" alt="...">
            <div class="card-body">
                <h5 class="card-title"><%= item.Nombre%></h5>
                <p class="card-text"><%=item.Descripcion %></p>
                <p class="card-text"><small class="text-muted"><%=item.Marca + " " +  item.Categoria %></small></p>
                <p class="card-text"><%=item.Precio %></></p>
                <a href="CarritoDeCompras.aspx?id=<% = item.ID %>" class="btn btn-primary mb-1">Agregar al Carrito</a>
                <a href="DetalleArticulo.aspx?id=<% = item.ID %>" class="btn btn-secondary">Ver Detalle</a>
            </div>
        </div>
        <%} %>
    </div>

</asp:Content>
