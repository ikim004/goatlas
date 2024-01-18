<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="modifierStation.aspx.cs" Inherits="GoAtlass.Admins.modifierStation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <h1 style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;" >Modifier le Station</h1>
    <div class="row"> 

        <div class="col-lg-6 col-sm-12">
          <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Nom Station</label>
 <asp:TextBox ID="nom" runat="server" class="form-control"></asp:TextBox>
</div>

      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Address</label>
  <asp:TextBox ID="address" runat="server" class="form-control" ></asp:TextBox>
 
</div>

      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Ip Prive</label>
    <asp:TextBox ID="Ipp" runat="server" class="form-control"></asp:TextBox>
 
</div>

      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">N° Pos</label>
 <asp:TextBox ID="Pos" runat="server" class="form-control"></asp:TextBox>

</div>

      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Prix Gazoil</label>
    <asp:TextBox ID="Prixg" runat="server" class="form-control"></asp:TextBox>
</div>
 </div> 
              <div class="col-lg-6 col-sm-12">

      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Prix Limpio</label>
 <asp:TextBox ID="Prixlmp" runat="server" class="form-control"></asp:TextBox>
        
</div>


      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Prix SSP</label>
   <asp:TextBox ID="PrixSsp" runat="server" class="form-control"></asp:TextBox>
</div>

      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Ip Public</label>
  <asp:TextBox ID="Ippub" runat="server" class="form-control"></asp:TextBox>

</div>


      <div class="form-group">
  <label for="exampleInputEmail1" class="form-label mt-4">Nom Ville </label>
          <asp:DropDownList ID="DropDownList1" runat="server" class="form-select" >


          </asp:DropDownList>

</div>
          <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">Nom Gerant  </label>
     <asp:DropDownList ID="DropDownList2" runat="server" class="form-select" >


     </asp:DropDownList>

</div>
             <div class="form-group">
     <label for="exampleInputEmail1" class="form-label mt-4" style="margin-right:2%;"> Statut</label>
                 <asp:RadioButton ID="RadioButton1" runat="server" Text="Active" GroupName="rd" style="margin-right:2%;" />
                 <asp:RadioButton ID="RadioButton2" runat="server" Text="Non Active" GroupName="rd" style="margin-right:2%;" />


       </div>
                  </div> 
            </div>

    <div>
        <asp:Button ID="Button1" runat="server" Text="modifier " class="btn btn-success" OnClick="Button1_Click" style="margin-top:2%"/>
    </div>
    

</asp:Content>
