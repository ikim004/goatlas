<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="G_Produits.aspx.cs" Inherits="GoAtlass.Admins.G_Produits" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                             <div>
         <h1 class="text-center " style="margin-top:3%; font-style: oblique;">Liste des Produits : </h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table text-center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <Columns>
                     <asp:BoundField DataField="idProduit" HeaderText="id Produit " Visible="false" > </asp:BoundField>
                    <asp:BoundField DataField="nomProduit" HeaderText="Nom Produit " > </asp:BoundField>
                    <asp:BoundField DataField="Prix" HeaderText="Prix" > </asp:BoundField>
              
                 
        
                    <asp:ButtonField CommandName="Select" Text="Edit" ControlStyle-CssClass="btn btn-success btn-block fa-lg gradient-custom-2 mb-3" HeaderText="Action" >
                    
<ControlStyle CssClass="btn btn-primary w-100"></ControlStyle>
                     </asp:ButtonField>
                    
                </Columns>
                                <HeaderStyle  CssClass="text-white bg-success" />
                         </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Ajouter"  CssClass="btn btn-success " style="margin-left:85% ;  width:15%;"  />
      

            
                             

           
</div>
</asp:Content>
