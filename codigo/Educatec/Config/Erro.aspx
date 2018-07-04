<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Erro.aspx.cs" Inherits="Config_Erro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alerterror">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
        <strong>Erro</strong> Algo deu errado.
    </div>
</asp:Content>

