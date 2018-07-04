<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EstadoHome.aspx.cs" Inherits="Config_Estado_EstadoHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="conteudo">
    <p>
    <asp:Label ID="Label1" runat="server" Text="Estado"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Pesquisar" />
    <br />
       </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Senquecial" HeaderText="Sequencial" />
            <asp:BoundField DataField="DesEstado" HeaderText="Estado">
            <ItemStyle Width="300px" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
</div>
    <p>
        <asp:Button ID="Button2" runat="server" 
            Text="Incluir" 
            PostBackUrl="~/Config/Escolaridade/CreateOrUpdateEscolaridade.aspx" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" onclick="Button1_Click" 
            Text="Alterar" />
        <asp:Button ID="Button4" runat="server" onclick="Button1_Click" 
            Text="Excluir" />
    </p>
</asp:Content>

