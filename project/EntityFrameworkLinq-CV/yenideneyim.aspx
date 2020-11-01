<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yenideneyim.aspx.cs" Inherits="EntityFrameworkLinq_CV.yenideneyim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2 >Yeni Deneyim Ekleme Sayfası</h2>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Deneyim adını yazınız" required></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Açıklama giriniz" required></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-success btn-block" OnClick="Button1_Click"/>
</asp:Content>
