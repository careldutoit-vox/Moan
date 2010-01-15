<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MaonWebApp.Models.Nags>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>ViewNags</h2>

    <table>
        <tr>
            <th></th>
            <th>
                NagsID
            </th>
            <th>
                DateAdded
            </th>
            <th>
                Description
            </th>
            <th>
                Content
            </th>
            <th>
                PosorNeg
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Html.ActionLink("Edit", "Edit", new { id=item.NagsID }) %> |
                <%= Html.ActionLink("Details", "Details", new { id=item.NagsID })%>
            </td>
            <td>
                <%= Html.Encode(item.NagsID) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:g}", item.DateAdded)) %>
            </td>
            <td>
                <%= Html.Encode(item.Description) %>
            </td>
            <td>
                <%= Html.Encode(item.Content) %>
            </td>
            <td>
                <%= Html.Encode(item.PosorNeg) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<p>
     <%= ViewData["Heading"]%>
</p>
<p>
     <%= ViewData["Heading2"]%>
</p>
</asp:Content>

