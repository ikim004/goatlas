<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="InsertStation.aspx.cs" Inherits="GoAtlass.Admins.InsertStation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
          
      <h1 style="font-weight: 600; font-style: oblique;margin-top:3%; margin-bottom:2.25%; color:#2D3250;">Ajouter Un Station</h1>

    <div class="row"> 

        <div class="col-lg-6 col-sm-12">
    <div class="form-group " >
      <label for="exampleInputEmail1" class="form-label mt-4">Nom Station</label>
   
              <asp:TextBox ID="nom" runat="server" class="form-control"  ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="entree le nom correct" ControlToValidate="nom"></asp:RequiredFieldValidator>

            
    </div>

          <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">Address</label>
      <asp:TextBox ID="address" runat="server" class="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="entree Adress correct" ControlToValidate="address"></asp:RequiredFieldValidator>
 
    </div>

          <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">Ip Prive</label>
        <asp:TextBox ID="Ipp" runat="server" class="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="le champs est obligatiore " ControlToValidate="Ipp" Display="None"></asp:RequiredFieldValidator>
    </div>

          <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">N° Pos </label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="le champs est obligatiore " ControlToValidate="Pos"></asp:RequiredFieldValidator>
     <asp:TextBox ID="Pos" runat="server" class="form-control"></asp:TextBox>


    </div>

          <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">Prix Gazoil</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Prixg" ErrorMessage="le champs est obligatiore "></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="Prixg" runat="server" class="form-control"></asp:TextBox>

              <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="Prixg" ErrorMessage="entree valeur double" Type="Double"></asp:RangeValidator>

    </div>
            </div>
          <div class="col-lg-6 col-sm-12">

          <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">Prix Limpio<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="le champs est obligatiore " ControlToValidate="Prixlmp"></asp:RequiredFieldValidator>
              </label>
     &nbsp;<asp:TextBox ID="Prixlmp" runat="server" class="form-control"></asp:TextBox>

              <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="Prixlmp" ErrorMessage="entree valeur double" Type="Double"></asp:RangeValidator>

    </div>


          <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">Prix SSP<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="le champs est obligatiore " ControlToValidate="PrixSsp"></asp:RequiredFieldValidator>
              </label>
       &nbsp;<asp:TextBox ID="PrixSsp" runat="server" class="form-control"></asp:TextBox>

              <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="PrixSsp" ErrorMessage="entree valeur double" Type="Double"></asp:RangeValidator>

    </div>

          <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">Ip Public<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="le champs est obligatiore " ControlToValidate="Ippub"></asp:RequiredFieldValidator>
              </label>
      &nbsp;<asp:TextBox ID="Ippub" runat="server" class="form-control"></asp:TextBox>

    </div>


          <div class="form-group">
      <label for="exampleInputEmail1" class="form-label mt-4">Nom Ville </label>
              <asp:DropDownList ID="DropDownList1" runat="server" class="form-select" >
                
                  
              </asp:DropDownList>

    </div>
              <div class="form-group">
          <label for="exampleInputEmail1" class="form-label mt-4">Nom Gerant  
                  </label>
         <asp:DropDownList ID="DropDownList2" runat="server" class="form-select" >
    
      
           </asp:DropDownList>

                
    </div>
           
              <div class="form-group">
          <label for="exampleInputEmail1" class="form-label mt-4" style="margin-right:2%;">Status :  </label>
                  <asp:RadioButton ID="RadioButton1" runat="server" Text="Active" GroupName="rd" style="margin-right:2%;" />
                  <asp:RadioButton ID="RadioButton2" runat="server" Text="Non Active" GroupName="rd" style="margin-right:2%;" />
    </div>
        </div> 

    </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Ajouter" class="btn btn-success" style="margin-top:2%" OnClick="Button1_Click"  />
        </div>
</asp:Content>
