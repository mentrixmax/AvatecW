<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EscolaridadeHome.aspx.cs" Inherits="Config_EscolaridadeHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        
        <asp:Label ID="Label1" runat="server" Text="Escolaridade"></asp:Label>
        <br/>
        <asp:TextBox ID="TxtEscolaridade" runat="server"></asp:TextBox>
    &nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Pesquisar" />
    </p>
    
   <div class="conteudo">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Sequencial" HeaderText="Sequencial" />
                <asp:BoundField DataField="DesEscolaridade" HeaderText="Escolaridade">
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

