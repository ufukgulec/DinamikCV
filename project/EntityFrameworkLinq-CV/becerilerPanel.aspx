<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="becerilerPanel.aspx.cs" Inherits="EntityFrameworkLinq_CV.becerilerPanel" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-sm text-center font-weight-bold table-bordered">
        <tr>
            <th>ID</th>
            <th>YETENEK</th>
            <th>DERECE</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("id") %>
                    </td>
                    <td>
                        <%#Eval("yetenekAd") %>
                    </td>
                    <td>
                        <%#Eval("derece") %>
                    </td>
                    <td>
                        <asp:HyperLink class="btn btn-danger" ID="HyperLink1" NavigateUrl='<%#"yetenekSil.aspx?id="+Eval("id")%>' runat="server">SİL</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink class="btn btn-success" ID="HyperLink2" NavigateUrl='<%#"yetenekGuncelle.aspx?id="+Eval("id")%>' runat="server">GÜNCELLE</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="yeniyetenek.aspx" class="btn btn-primary btn-block">YENİ YETENEK EKLE</a>
</asp:Content>
