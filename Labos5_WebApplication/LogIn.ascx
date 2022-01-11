<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LogIn.ascx.cs" Inherits="Labos5_WebApplication.LogIn" %>
<asp:Panel ID="pLogin" runat="server">
    <h1>Dobrodošli!</h1>
    <h2>Unesite svoje korisničlo ime i lozinku za pristup</h2>
    <br />
    <asp:Label ID="KorisnickoIme" runat="server" Text="Korisničko ime:" BorderStyle="None"></asp:Label>
    <asp:TextBox ID="TextBoxKorisnickoIme" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Lozinka" runat="server" BorderStyle="None" Text="Lozinka:" Width="103px"></asp:Label>
    <asp:TextBox ID="TextBoxLozinka" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="ButtonLogIn" runat="server" Text="Prijava" OnClick="ButtonLogIn_Click" />
</asp:Panel>
<asp:Panel ID="pGreska" runat="server" Visible="False">
    <h3>Korisnik nije pronađen</h3>

</asp:Panel>
<asp:Panel ID="pPregled" runat="server" Visible="False">
    <asp:GridView ID="GridViewData" runat="server">
    </asp:GridView>
</asp:Panel>
