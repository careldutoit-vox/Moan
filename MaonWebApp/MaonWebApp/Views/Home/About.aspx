<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= Html.Encode(ViewData["Message"]) %></h2>
    <p>
        TODO: Put <em>about</em> content here.
        
        
    </p>
    <form id="Form1" runat="server">
    <asp:TextBox ID="txtSpecial" runat="server"></asp:TextBox><asp:Label ForeColor="Red" ID="lblSpecial"
        runat="server" Text="Label"></asp:Label>
    <br />
    <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox><asp:Label ForeColor="Red" ID="lblnumber" runat="server"
        Text="Label"></asp:Label>
    <br />
    <asp:Button ID="btnConvertSpecial" runat="server" CssClass="button" Text="Convert Special" 
        />
    <br />
    <asp:Button ID="btnConvertNumber" runat="server" CssClass="button" Text="Convert Number" 
         />
        </form>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
