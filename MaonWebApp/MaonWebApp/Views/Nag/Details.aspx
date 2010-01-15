<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MaonWebApp.Models.Nags>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        <p>
            NagsID:
            <%= Html.Encode(Model.NagsID) %>
        </p>
        <p>
            DateAdded:
            <%= Html.Encode(String.Format("{0:g}", Model.DateAdded)) %>
        </p>
        <p>
            Description:
            <%= Html.Encode(Model.Description) %>
        </p>
        <p>
            Content:
            <%= Html.Encode(Model.Content) %>
        </p>
        <p>
            PosorNeg:
            <%= Html.Encode(Model.PosorNeg) %>
        </p>
    </fieldset>
    <p>

        <%=Html.ActionLink("Edit", "Edit", new { id=Model.NagsID }) %>
        <%=Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

