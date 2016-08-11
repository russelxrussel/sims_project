﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rep_StudentIDForm.aspx.cs" Inherits="rep_StudentIDForm" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<script type="text/javascript">
    function Print() {
        var dvReport = document.getElementById("rcontent");
        var frame1 = dvReport.getElementsByTagName("iframe")[0];
        if (navigator.appName.indexOf("Internet Explorer") != -1) {
            frame1.name = frame1.id;
            window.frames[frame1.id].focus();
            window.frames[frame1.id].print();
        }
        else {
            var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
            frameDoc.print();
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <div id="Selection">
    <asp:RadioButton runat="server" ID="rbNew" Text="New Students" GroupName="rad1" Checked="true" /><br />
    <asp:RadioButton runat="server" ID="rbReturnee" Text="Returnee Students" GroupName="rad1" /> <br />
    <asp:RadioButton runat="server" ID="rbOld" Text="Old Students" GroupName="rad1" /> <br />
    <asp:Button runat="server" ID="btnSubmit" Text="Load Selection" 
            onclick="btnSubmit_Click" />
    </div>
    <br />
       <div id="rcontent">      

         <CR:CrystalReportViewer ID="crv" runat="server" 
              AutoDataBind="true" EnableDatabaseLogonPrompt="False" 
              EnableParameterPrompt="False" HasToggleGroupTreeButton="true" 
              PrintMode="ActiveX" ToolPanelView="GroupTree"
              ReuseParameterValuesOnRefresh="True"  
              PageZoomFactor="75" 
              BestFitPage="False" HasExportButton="true" 
              HasPageNavigationButtons="True" />
   
    </div>
    </div>
    </form>
</body>
</html>
