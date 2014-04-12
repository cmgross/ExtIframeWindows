<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Child.aspx.cs" Inherits="ExtIframeWindows.Child" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="fChild" runat="server">
        <div>
            <ext:ResourceManager ID="rmChild" runat="server" />

            <ext:Button runat="server" Text="Open stepchild in iframe">
                <Listeners>
                    <Click Handler="
                        new parent.Ext.Window({
                modal: true,
                id: 'wStepchild',
                renderTo: parent.Ext.getBody(),
                iconCls: 'icon-table',
                maximizable: true,
                title: 'Stepchild',
                autoLoad:{
                        maskMsg:'Loading...',
                        showMask:true,
                        mode:'iframe', 
                        url:'Stepchild.aspx'},
                width:250,
                height:150,
                bodyStyle: 'background-color: #fff;'
            }).show();
                        " />
                </Listeners>
            </ext:Button>
        </div>
    </form>
</body>
</html>
