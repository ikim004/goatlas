<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ModifieUsr.aspx.cs" Inherits="GoAtlass.Admins.ModifieUsr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;">Modifier l'utulisateur</h1>
                  <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Nom  </label>
 <asp:TextBox ID="nomUts" runat="server" class="form-control"></asp:TextBox>
 
</div>

      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4"> Prenom</label>
  <asp:TextBox ID="prenom" runat="server" class="form-control"></asp:TextBox>

</div>
         <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4"> Email</label>
     <asp:TextBox ID="emailUs" runat="server" class="form-control"></asp:TextBox>
       </div>
             <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4" >Mot de Pass</label>
     <asp:TextBox ID="passwordUs" runat="server" class="form-control"></asp:TextBox>
                 
             
       </div>
             <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4"> Role</label>
                 <asp:DropDownList ID="DropDownList1" runat="server" class="form-select">
                     <asp:ListItem Value="admin">Admin</asp:ListItem>
                     <asp:ListItem Value="user">User</asp:ListItem>
                     <asp:ListItem Value="gerant">Gerant</asp:ListItem>
                     <asp:ListItem Value="superviseur">Superviseur</asp:ListItem>
                 </asp:DropDownList>

       </div>

   <div>
       <asp:Button ID="updateUser" runat="server" Text="Modifier" class="btn btn-success" OnClick="updateUser_Click" style ="margin-top:3%;"/>
   </div>
</asp:Content>
