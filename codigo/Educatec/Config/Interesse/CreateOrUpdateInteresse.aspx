<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateOrUpdateInteresse.aspx.cs" Inherits="Config_Interesse_CreateOrUpdateInteresse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 452px">
        <p>
            <asp:Label ID="Label1" runat="server" Text="Interesse"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInteresse" ErrorMessage="Campo Obrigatório">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtInteresse" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:HiddenField ID="Sequencial" runat="server" />
        </p>

        <div id="novo" class="hiddenDiv">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
            Registro salvo com sucesso!
        </div>
    </div>
    <div>
        <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click"
            Text="Salvar" />
    </div>
</asp:Content>

