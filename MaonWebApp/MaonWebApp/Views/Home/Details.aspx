<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MaonWebApp.Models.Nag>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        <p>
            NagsID:
            <%= ViewData["Details"] %>
           
           
        </p>
        
    </fieldset>
    <p>

       <%-- <%=Html.ActionLink("Edit", "Edit", new { id=Model.NagsID }) %> |
        <%=Html.ActionLink("Back to List", "Index") %>--%>
    </p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

