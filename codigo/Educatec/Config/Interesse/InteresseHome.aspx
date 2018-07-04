<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InteresseHome.aspx.cs" Inherits="Config_Interesse_InteresseHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:600px" >
        <asp:Label ID="Label1" runat="server" Text="Interesse"></asp:Label>
        <br />

        <asp:TextBox ID="txtInteresse" runat="server"></asp:TextBox>
         <br />

        <asp:Button ID="Button2" runat="server" Text="Pesquisar" OnClick="Button2_Click" />
         
        <asp:GridView ID="dgInteresse" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Sequencial" HeaderText="Sequencial" />
                <asp:BoundField DataField="DesInteresse" HeaderText="Interesse">
                <ItemStyle Width="300px" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
         
    </div>
</asp:Content>

