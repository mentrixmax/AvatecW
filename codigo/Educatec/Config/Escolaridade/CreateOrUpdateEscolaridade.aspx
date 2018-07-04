<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateOrUpdateEscolaridade.aspx.cs" Inherits="Config_CreateOrUpdateEscolaridade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="height: 452px">
        <p>
            <asp:Label ID="Label1" runat="server" Text="Escolaridade"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEscolaridade" ErrorMessage="Campo Obrigatório">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtEscolaridade" runat="server" OnTextChanged="txtEscolaridade_TextChanged" Width="323px"></asp:TextBox>
        </p>
        <p>
        </p>
    </div>

    
    <div>
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click"
            Text="Salvar" />
        <asp:Button ID="Button2" runat="server" Text="Incluir" />
    </div>
</asp:Content>

