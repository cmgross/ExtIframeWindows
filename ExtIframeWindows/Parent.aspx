<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parent.aspx.cs" Inherits="ExtIframeWindows.Parent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parent</title>
</head>
<body>
    <form id="fParent" runat="server">
        <div>
            <ext:ResourceManager ID="rmParent" runat="server" />

            <ext:Button runat="server" Text="Open Child Page as Iframe">
                <Listeners>
                    <Click Handler="
                        new Ext.Window({
                modal: false,
                id: 'wChild',
                iconCls: 'icon-table',
                maximizable: true,
                title: 'Child',
                autoLoad:{
                        maskMsg:'Loading...',
                        showMask:true,
                        mode:'iframe', 
                        url:'Child.aspx'},
                width:500,
                height:300,
                bodyStyle: 'background-color: #fff;'
            }).show();
                        " />
                </Listeners>
            </ext:Button>
        </div>
    </form>
</body>
</html>
