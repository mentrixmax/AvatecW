<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EscolaridadeHome.aspx.cs" Inherits="Config_EscolaridadeHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Escolaridade"></asp:Label>
        <br/>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Pesquisar" />
    </p>
    <p>
   <div style="height:412px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Sequencial" HeaderText="Sequencial" />
                <asp:BoundField DataField="DesEscolaridade" HeaderText="Escolaridade">
                <ItemStyle Width="300px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </p>
    </div>
    <p>
        <asp:Button ID="Button2" runat="server" 
            Text="Incluir" 
            PostBackUrl="~/Config/Escolaridade/CreateOrUpdateEscolaridade.aspx" />
        <asp:Button ID="Button3" runat="server" onclick="Button1_Click" 
            Text="Alterar" />
        <asp:Button ID="Button4" runat="server" onclick="Button1_Click" 
            Text="Excluir" />
    </p>
</asp:Content>

