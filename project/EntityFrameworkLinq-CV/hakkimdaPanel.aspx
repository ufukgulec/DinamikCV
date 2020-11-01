<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="hakkimdaPanel.aspx.cs" Inherits="EntityFrameworkLinq_CV.hakkımdaPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="EntityDataSource1" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
            <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
            <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
            <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
            <asp:BoundField DataField="eposta" HeaderText="eposta" SortExpression="eposta" />
            <asp:BoundField DataField="hakkimdaYazi" HeaderText="hakkimdaYazi" SortExpression="hakkimdaYazi" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True">
            <ControlStyle CssClass="btn btn-info" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dinamikCVEntities" DefaultContainerName="dinamikCVEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="hakkimda" EntityTypeFilter="hakkimda">
    </asp:EntityDataSource>

</asp:Content>
