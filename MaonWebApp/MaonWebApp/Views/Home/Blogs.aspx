<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="MaonWebApp.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Blogs</h2>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>My Movie Website</h1>

          <% foreach (var c in (IEnumerable<Category>)ViewData["content"])
                           {%>

               <%= Html.ActionLink(c.CatName, "Details", new {id=c.CatID} ) %> 

          <% } %>
</asp:Content>
