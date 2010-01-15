<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>ContactMe</h2>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><%= Html.Encode(ViewData["Message"])%></h2>
    <p>
        Page Rendered: <%= DateTime.Now.ToLongTimeString() %>
    </p>
    <span id="status">No Status</span>
    
    <%= Ajax.ActionLink("Update Status","GetStatus",new AjaxOptions{UpdateTargetId = "status"}) %>
      <br /><br />
    <% using (Ajax.BeginForm("UpdateForm", new AjaxOptions { UpdateTargetId = "textEntered" }))
       {%>
      <%= Html.TextBox("textBox1", "Enter text")%>  
      <input type="submit" value="Submit" class="button"/>
      <br />
      <span id="textEntered">Nothing Entered</span>
        <%} %>

</asp:Content>
