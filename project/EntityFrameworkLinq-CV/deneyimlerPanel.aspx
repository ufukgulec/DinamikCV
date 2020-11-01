<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="deneyimlerPanel.aspx.cs" Inherits="EntityFrameworkLinq_CV.deneyimlerPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" CssClass="mt-2 ml-auto mr-auto" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="897px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="deneyim1" HeaderText="deneyim1" SortExpression="deneyim1" />
            <asp:BoundField DataField="aciklama" HeaderText="Açıklama" SortExpression="aciklama" >
            <ControlStyle Width="100%" />
            </asp:BoundField>
            <asp:CommandField ShowEditButton="True">
            <ControlStyle CssClass="btn btn-info m-1" />
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True">
            <ControlStyle CssClass="btn btn-danger" />
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
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dinamikCVEntities" DefaultContainerName="dinamikCVEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="deneyim" EntityTypeFilter="deneyim">
    </asp:EntityDataSource>
    <a href="yenideneyim.aspx" class="mt-2 btn btn-success btn-block">YENİ DENEYİM EKLE</a>
</asp:Content>
