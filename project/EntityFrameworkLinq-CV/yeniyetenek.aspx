<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yeniyetenek.aspx.cs" Inherits="EntityFrameworkLinq_CV.yeniyetenek" UnobtrusiveValidationMode="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2 >Yeni Yetenek Ekleme Sayfası</h2>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Yeteneğin adını yazınız" required></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Derecesini giriniz"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="0-100 !" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-success btn-block" OnClick="Button1_Click"/>
</asp:Content>
