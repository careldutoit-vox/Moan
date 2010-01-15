<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MaonWebApp.Models.Nags>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <%= Html.ValidationSummary("Create was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) {%>

        <fieldset>
            <legend>Fields</legend>
            <p>
                <label for="NagsID">NagsID:</label>
                <%= Html.TextBox("NagsID") %>
                <%= Html.ValidationMessage("NagsID", "*") %>
            </p>
            <p>
                <label for="DateAdded">DateAdded:</label>
                <%= Html.TextBox("DateAdded") %>
                <%= Html.ValidationMessage("DateAdded", "*") %>
            </p>
            <p>
                <label for="Description">Description:</label>
                <%= Html.TextBox("Description") %>
                <%= Html.ValidationMessage("Description", "*") %>
            </p>
            <p>
                <label for="Content">Content:</label>
                <%= Html.TextBox("Content") %>
                <%= Html.ValidationMessage("Content", "*") %>
            </p>
            <p>
                <label for="PosorNeg">PosorNeg:</label>
                <%= Html.TextBox("PosorNeg") %>
                <%= Html.ValidationMessage("PosorNeg", "*") %>
            </p>
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

