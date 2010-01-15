<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>


<asp:Content ID="Head" ContentPlaceHolderID="HeadContent" runat="server">


<link rel="stylesheet" type="text/css" href="/scripts/themes/custom-theme/ui.theme.css" 
  title="coffee" media="screen" />
<script src="/Scripts/jquery-1.3.2.js" type="text/javascript"></script>
<script src="/Scripts/jquery.jqGrid.js" type="text/javascript"></script>
<script src="/Scripts/js/jqModal.js" type="text/javascript"></script>
<script src="/Scripts/js/jqDnR.js" type="text/javascript"></script>



<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery("#list").jqGrid({
            url: '/RoadRage/GridData/',
            datatype: 'json',
            mtype: 'GET',
            colNames: ['Id', 'Votes', 'Title'],
            colModel: [
          { name: 'Id', index: 'Id', width: 40, align: 'left' },
          { name: 'Votes', index: 'Votes', width: 40, align: 'left' },
          { name: 'Title', index: 'Title', width: 200, align: 'left'}],
            pager: jQuery('#pager'),
            rowNum: 10,
            rowList: [5, 10, 20, 50],
            sortname: 'Id',
            sortorder: "desc",
            viewrecords: true,
            imgpath: '/scripts/themes/moangrid/images',
            caption: 'My first grid'
        });
    }); 
</script>


</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  

<h2>My Grid Data</h2>
<table id="list" class="scroll" cellpadding="0" cellspacing="0"></table>
<div id="pager" class="scroll" style="text-align:center;"></div>




</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
