<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Journey.aspx.cs" Inherits="GoAtlass.Admins.Journey" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                             <div>
         <h1 class="text-center " style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;">Liste des Journey : </h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table text-center"  >
                <Columns>
                     <asp:BoundField DataField="idJourney" HeaderText="idJourney "  > </asp:BoundField>
                    <asp:BoundField DataField="dateJourney" HeaderText="date Journey " > </asp:BoundField>
                    <asp:BoundField DataField="idCuve" HeaderText="idCuve" > </asp:BoundField>
                
                    <asp:BoundField DataField="StocK_initial" HeaderText="StocK initial" > </asp:BoundField>
                    <asp:BoundField DataField="Stock_finale" HeaderText=" Stock finale" > </asp:BoundField>
                    <asp:BoundField DataField="Montant_Cuve" HeaderText="Montant Cuve" > </asp:BoundField>
                    <asp:BoundField DataField="id_Pompe" HeaderText="id Pompe" > </asp:BoundField>
                    <asp:BoundField DataField="cpt_initial" HeaderText="Compte initial" > </asp:BoundField>
                    <asp:BoundField DataField="cpt_final" HeaderText=" Compte finale" > </asp:BoundField>
                    <asp:BoundField DataField="Sortie" HeaderText="Sortie" > </asp:BoundField>
                    <asp:BoundField DataField="Montant_Pompe" HeaderText="Montant Pompe" > </asp:BoundField>
                    <asp:BoundField DataField="Montant_SSp" HeaderText="Montant SSp" > </asp:BoundField>
                    <asp:BoundField DataField="Montant_Gazoil" HeaderText="Montant Gazoil" > </asp:BoundField>
                    <asp:BoundField DataField="Montant_Limpio" HeaderText="Montant Limpio" > </asp:BoundField>
                    <asp:BoundField DataField="Montant_global" HeaderText="Montant Globale" > </asp:BoundField>
             
                    <asp:ButtonField CommandName="Select" Text="Edit" ControlStyle-CssClass="btn btn-success btn-block fa-lg gradient-custom-2 mb-3" HeaderText="Action" >
                    
<ControlStyle CssClass="btn btn-primary w-100"></ControlStyle>
                     </asp:ButtonField>
                    
                </Columns>
                                <HeaderStyle  CssClass="text-white bg-success" />
                         </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Ajouter" CssClass="btn btn-success " style="margin-left:85% ;  width:15%;"  />
      

                             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                             

           
</div>
</asp:Content>
