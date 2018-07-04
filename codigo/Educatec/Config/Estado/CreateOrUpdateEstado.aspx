<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateOrUpdateEstado.aspx.cs" Inherits="Config_Estado_CreateOrUpdateEstadoaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="height:600px">
    Estado<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEstado" ErrorMessage="Campo Obrigatório">*</asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="txtEstado" runat="server" Width="300px" style="margin-bottom: 1px"></asp:TextBox>
      
    <p>
        &nbsp;</p>
</div>
<div>
   
    <asp:Button ID="btnSalvar" runat="server" OnClick="Salvar_Click" Text="Salvar" Height="31px" style="margin-left: 10px" Width="63px" />

        
    <asp:Button ID="Button2" runat="server" Height="31px" Text="Incluir" Width="63px" />

        
    </div>
</asp:Content>
