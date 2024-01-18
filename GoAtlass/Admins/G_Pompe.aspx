<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="G_Pompe.aspx.cs" Inherits="GoAtlass.Admins.G_Pompe" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                             <div>
         <h1 class="text-center " style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;">Liste des Pompes : </h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table text-center"  >
                <Columns>
                     <asp:BoundField DataField="NumPompe" HeaderText="Id Pompe "  > </asp:BoundField>
                    <asp:BoundField DataField="Produit" HeaderText="Produit " > </asp:BoundField>
                    <asp:BoundField DataField="Cpt_initial" HeaderText="Comptes initiale" > </asp:BoundField>
                
                    <asp:BoundField DataField="Cpt_finale" HeaderText="Comptes finale" > </asp:BoundField>
                    <asp:BoundField DataField="Montant_Pompe" HeaderText="Sortie"> </asp:BoundField>
                    <asp:BoundField DataField="Stock_initial" HeaderText="Stock initial" > </asp:BoundField>
                    <asp:BoundField DataField="StockFinale" HeaderText="Stock Finale" > </asp:BoundField>
                
             
                    <asp:ButtonField CommandName="Select" Text="Edit" ControlStyle-CssClass="btn btn-success btn-block fa-lg gradient-custom-2 mb-3" HeaderText="Action" >
                    
<ControlStyle CssClass="btn btn-primary w-100"></ControlStyle>
                     </asp:ButtonField>
                    
                </Columns>
                                <HeaderStyle  CssClass="text-white bg-success" />
                         </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Ajouter" CssClass="btn btn-success " style="margin-left:85% ;  width:15%;"   />
      

                             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                             

           
</div>
</asp:Content>
