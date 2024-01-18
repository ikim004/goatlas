<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="G_Cuve.aspx.cs" Inherits="GoAtlass.Admins.G_Cuve" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                         <div>
         <h1 class="text-center " style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;">Liste des Cuve : </h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table text-center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <Columns>
                     <asp:BoundField DataField="IdCuve" HeaderText="Id_Cuve "  > </asp:BoundField>
                    <asp:BoundField DataField="Num_cuve" HeaderText="Num_cuve " > </asp:BoundField>
                    <asp:BoundField DataField="Nom_cuve" HeaderText="Nom_cuve" > </asp:BoundField>
                
                    <asp:BoundField DataField="Capacity" HeaderText="Capacity" > </asp:BoundField>
                    <asp:BoundField DataField="Produit" HeaderText=" Produit" > </asp:BoundField>
                    <asp:BoundField DataField="Stock_initial" HeaderText="Stock initial" > </asp:BoundField>
                    <asp:BoundField DataField="StockFinale" HeaderText="Stock Finale" > </asp:BoundField>
                
             
                    <asp:ButtonField CommandName="Select" Text="Edit" ControlStyle-CssClass="btn btn-success btn-block fa-lg gradient-custom-2 mb-3" HeaderText="Action" >
                    
<ControlStyle CssClass="btn btn-primary w-100"></ControlStyle>
                     </asp:ButtonField>
                    
                </Columns>
                                <HeaderStyle  CssClass="text-white bg-success" />
                         </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Ajouter" CssClass="btn btn-success " style="margin-left:85% ;  width:15%;" OnClick="Button1_Click"  />
      

                             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                             

           
</div>
</asp:Content>
