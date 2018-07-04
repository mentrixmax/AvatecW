<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EscolaridadeHome.aspx.cs" Inherits="Config_EscolaridadeHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        
        <asp:Label ID="Label1" runat="server" Text="Escolaridade"></asp:Label>
        <br/>
        <asp:TextBox ID="TxtEscolaridade" runat="server"></asp:TextBox>
    &nbsp;
        <asp:Button ID="Button1" runat="server" onclick="btnPesquisar_Click" 
            Text="Pesquisar" />
    </p>
    
   <div class="conteudo">
        <asp:HiddenField ID="Sequencial" runat="server" OnValueChanged="HiddenField1_ValueChanged" />
        <asp:GridView ID="dgEscolaridade" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
        <asp:Button ID="bntIncluir" runat="server" 
            Text="Incluir" 
            PostBackUrl="~/Config/Escolaridade/CreateOrUpdateEscolaridade.aspx" OnClick="btnIncluir_Click" />
        <asp:Button ID="bntAlterar" runat="server" onclick="btnAlterar_Click" 
            Text="Alterar" />
        <asp:Button ID="bntExcluir" runat="server" onclick="btnExcluir_Click" 
            Text="Excluir" />
    </p>

</asp:Content>

