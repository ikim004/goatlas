<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="insertUser.aspx.cs" Inherits="GoAtlass.Admins.insertUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
           
    <h1 style="font-weight: 600; font-style: oblique;margin-top:3%; margin-bottom:2.25%; color:#2D3250;">Ajouter Un Utilisateur </h1>
    <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Nom
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nomUts" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
                  </label>
 <asp:TextBox ID="nomUts" runat="server" class="form-control"></asp:TextBox>
 
</div>

      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4"> Prenom<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="prenom" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
          </label>
  &nbsp;<asp:TextBox ID="prenom" runat="server" class="form-control"></asp:TextBox>

</div>
         <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4"> Email<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailUs" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailUs" ErrorMessage="email invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </label>
     &nbsp;<asp:TextBox ID="emailUs" runat="server" class="form-control"></asp:TextBox>

       </div>
             <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4" >Password<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordUs" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="passwordUs" ErrorMessage="password (8-15  caractere , Maj ,Min , Symbole : (#-@ ... )  , Num ) " ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}$"></asp:RegularExpressionValidator>
                 </label>
     &nbsp;<asp:TextBox ID="passwordUs" runat="server" class="form-control" TextMode="Password" OnTextChanged="passwordUs_TextChanged"></asp:TextBox>

       </div>
             <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4"> Role</label>
                 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                     <asp:ListItem>admin</asp:ListItem>
                     <asp:ListItem>user</asp:ListItem>
                     <asp:ListItem>gerant</asp:ListItem>
                     <asp:ListItem>superviseur</asp:ListItem>
                 </asp:DropDownList>

       </div>

   <div>
       <asp:Button ID="insertVille" runat="server" Text="Ajouter" class="btn btn-success" OnClick="insertVille_Click" Style="margin-top:2% ; width:100px" />
   </div>
</asp:Content>
