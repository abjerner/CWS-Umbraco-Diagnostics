﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="diagnostics.aspx.cs" Inherits="CWS.UmbracoDiagnostics.Web.diagnostics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Diagnostics</h1>

        <h2>Version</h2>
        <p>
            <strong>Umbraco Version:</strong> <asp:Label runat="server" ID="umbVersion"/><br/>
            <strong>Umbraco Assembly:</strong> <asp:Label runat="server" ID="umbAssembly"/>
        </p>
        
        <hr/>
        
        <h2>Assemblies <asp:Label runat="server" ID="assemblyCount"/></h2>
        <ul>
            <%
                foreach (var dll in AllAssemblies)
                {
            %>
                    <li>
                        <%= dll.GetName().Name %> - <%=dll.GetName().Version %>
                    </li>
            <%
                }
            %>
        </ul>

    </form>
</body>
</html>
