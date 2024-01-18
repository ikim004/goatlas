<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ModifieVille.aspx.cs" Inherits="GoAtlass.Admins.ModifieVille" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
          <div class="form-group">
              <h1 style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;">Modifier La Ville</h1>
  <label for="exampleInputEmail1" class="form-label mt-4" >Nom Ville</label>
 <asp:TextBox ID="nomv" runat="server" class="form-control"></asp:TextBox>
</div>

      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4"> Differentiel</label>
  <asp:TextBox ID="differentiel" runat="server" class="form-control"></asp:TextBox>
</div>

   <div>
       <asp:Button ID="insertVille" runat="server" Text="Modifier" class="btn btn-success" OnClick="insertVille_Click" style="margin-top:3%" />
   </div>
</asp:Content>
