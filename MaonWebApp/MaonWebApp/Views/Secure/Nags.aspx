<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="MaonWebApp.Models"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h2><%= Html.Encode(ViewData["Title"])%></h2>
     <br />
     <p><%= ViewData["Desciption1"] %></p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <% Response.Write(DateTime.Now); %>
    <br />
    <%=DateTime.Now %>
    <br />
    <%= Html.TextBox("First Name") %>
    
     <% foreach (var c in (IEnumerable<Category>)ViewData["content"])
                           {%>
                
               <%= Html.ActionLink(c.CatName, "Details", new {id=c.CatID} ) %> 
               

          <% } %>
</asp:Content>
