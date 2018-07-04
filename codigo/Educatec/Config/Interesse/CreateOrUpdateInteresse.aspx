<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateOrUpdateInteresse.aspx.cs" Inherits="Config_Interesse_CreateOrUpdateInteresse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:452px">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Interesse"></asp:Label>
        <br />
        <asp:TextBox ID="txtInteresse" runat="server" ></asp:TextBox>
    </p>
    <p>
    </p>
</div>
<div>
    <asp:Button ID="btnSalvar" runat="server" onclick="btnSalvar_Click" 
        Text="Salvar" />
</div>
</asp:Content>

