<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InteresseHome.aspx.cs" Inherits="Config_Interesse_InteresseHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="conteudo" >
        <p>
        <asp:Label ID="Label1" runat="server" Text="Interesse"></asp:Label>
        <br />

        <asp:TextBox ID="txtInteresse" runat="server"></asp:TextBox>
               
        <asp:Button ID="Button2" runat="server" Text="Pesquisar" OnClick="Button2_Click" />
        <br /> 
            </p>
        <asp:HiddenField ID="Sequencial" runat="server" />
        <asp:GridView ID="dgInteresse" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="dgInteresse_SelectedIndexChanged" OnDataBound="dgInteresse_DataBound" OnRowDataBound="dgInteresse_RowDataBound">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Sequencial" HeaderText="Sequencial" ReadOnly="true"  />
                
                  
                <asp:BoundField DataField="DesInteresse" HeaderText="Interesse">
                <ItemStyle Width="300px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
         
    </div>

      <p>
        <asp:Button ID="Button1" runat="server" 
            Text="Incluir" 
            PostBackUrl="~/Config/Interesse/CreateOrUpdateInteresse.aspx" />
        <asp:Button ID="btnAlterar" runat="server"  
            Text="Alterar" Enabled="False" OnClick="btnAlterar_Click" />
        <asp:Button ID="btnExcluir" runat="server"  
            Text="Excluir" Enabled="False" />
    </p>

</asp:Content>

