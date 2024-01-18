   <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="GoAtlass.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <body class="bg-light" style="background-image: url(./image/img.jpg);">
      
 
    <section class="h-100 gradient-form " >
  <div class="container py-5 h-100 " style="margin-left:20%">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black w-50" >
          <div class="row g-0">
            <div class="col-lg-12 ">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <h4 class="mt-1 mb-5 pb-1 fs-1 fw-bold text-success " >Login </h4>
                </div>

            
                  <p>Please login to your account</p>

                  <div class="form-outline mb-4">                    
                     <label class="form-label" for="form2Example11">Email</label>
                      <asp:TextBox ID="TextEmail" runat="server" class="form-control"></asp:TextBox>

                  </div>

                  <div class="form-outline mb-4">
                      <label class="form-label" for="form2Example22">Mot de passe</label>
                      <asp:TextBox ID="Textpwd" runat="server" class="form-control" TextMode="Password" ></asp:TextBox>
                  </div>
                      

                  <div class="text-center pt-1 mb-5 pb-1 mr-1">
                      <asp:Button ID="Connexion" runat="server" Text=" Se Connecter" class="btn btn-success btn-block fa-lg gradient-custom-2 mb-3" OnClick="Connexion_Click"/> <br />
                      
                    
                  </div>

                 
                    <div>
                        <asp:Label ID="output" runat="server" Text=""></asp:Label>
                    </div>
      
         

              </div>
            </div>
       
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</asp:Content>
