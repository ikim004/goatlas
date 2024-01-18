<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="modifierCuve.aspx.cs" Inherits="GoAtlass.Admins.modifierCuve" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                  <h1 style="font-weight: 600; font-style: oblique;margin-top:3%; margin-bottom:2.25%; color:#2D3250;">Modifie Une Cuve </h1>


      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4"> Capacity<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Capacity" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
          </label>
  &nbsp;<asp:TextBox ID="Capacity" runat="server" class="form-control"></asp:TextBox>

</div>
         <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4"> nom Cuve<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="nomCuve" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
             </label>
     &nbsp;<asp:TextBox ID="nomCuve" runat="server" class="form-control"></asp:TextBox>

       </div>
             <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4" >num Cuve</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="numCuve" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
  
     &nbsp;<asp:TextBox ID="numCuve" runat="server" class="form-control" ></asp:TextBox>

       </div>
              
                 <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4" >stock_initial</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="stock_initial" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
  
     &nbsp;<asp:TextBox ID="stock_initial" runat="server" class="form-control" ></asp:TextBox>

       </div>
                 <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4" >stockFinal</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="stockFinal" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
  
     &nbsp;<asp:TextBox ID="stockFinal" runat="server" class="form-control" ></asp:TextBox>

              <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">nom Produit</label>
              <asp:DropDownList ID="DropDownList1" runat="server" class="form-select" >
                
                  
              </asp:DropDownList>

    </div>


   <div>
       <asp:Button ID="insertCuve" runat="server" Text="Edit" class="btn btn-success"  Style="width:100px; height: 29px;" OnClick="insertCuve_Click1"   />
   </div>
                  </div>
</asp:Content>
