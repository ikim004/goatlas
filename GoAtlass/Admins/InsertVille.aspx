<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="InsertVille.aspx.cs" Inherits="GoAtlass.Admins.InsertVille" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1  style="font-weight: 600; font-style: oblique;margin-top:3%; margin-bottom:2.25%; color:#2D3250;">Ajouter une ville</h1>
       <div class="form-group">
   <label for="exampleInputEmail1" class="form-label mt-4">Nom Ville</label>
  <asp:TextBox ID="nomv" runat="server" class="form-control"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="le champs est obligatiore" ControlToValidate="nomv"></asp:RequiredFieldValidator>
  
 </div>

       <div class="form-group">
   <label for="exampleInputEmail1" class="form-label mt-4"> differentiel</label>
   <asp:TextBox ID="differentiel" runat="server" class="form-control"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage=" " ControlToValidate="differentiel"></asp:RequiredFieldValidator>
 </div>
 
    <div>
        <asp:Button ID="insertVille" runat="server" Text="Add Ville" class="btn btn-success" style="margin-top:3%; margin-left:2px;" OnClick="insertVille_Click" />
    </div>
</asp:Content>
