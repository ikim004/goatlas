<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddJourney.aspx.cs" Inherits="GoAtlass.Admins.AddJourney" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                             <div>
         <h1 class="text-center " style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;">Liste des Cuve : </h1>
<asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CssClass="table text-center">
    <Columns>
        <asp:BoundField DataField="Num_cuve" HeaderText="Num_cuve"></asp:BoundField>
        <asp:BoundField DataField="Nom_cuve" HeaderText="Nom_cuve"></asp:BoundField>
        <asp:BoundField DataField="Produit" HeaderText="Produit"></asp:BoundField>
        <asp:BoundField DataField="Stock_initial" HeaderText="Stock initial" SortExpression="Stock_initial"></asp:BoundField>

        <asp:TemplateField HeaderText="User Entered Value">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Calculated Value">
            <ItemTemplate>
                <asp:Label ID="lblCalculatedValue" runat="server"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:BoundField HeaderText="Qte Vendue"></asp:BoundField>
    </Columns>
    <HeaderStyle CssClass="text-white bg-success" />
</asp:GridView>

            <asp:Button ID="Button1" runat="server" Text="Calculer" CssClass="btn btn-success " style="margin-left:85% ;  width:15%;" OnClick="Button1_Click1"   />
      

                             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                             

           
</div>
    

                                 <div>
         <h1 class="text-center " style="margin-top:3%; font-style: oblique;">Liste des Produits : </h1>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table text-center" >
                <Columns>
                  
                    <asp:BoundField DataField="nomProduit" HeaderText="Nom Produit " > </asp:BoundField>
                    <asp:BoundField DataField="Prix" HeaderText="Prix" > </asp:BoundField>
                    <asp:BoundField  HeaderText="Qte Vendue" > </asp:BoundField>
                     <asp:BoundField HeaderText="dhs" > </asp:BoundField>
              
                 
 
                    
                </Columns>
                                <HeaderStyle  CssClass="text-white bg-success" />
                         </asp:GridView>
      

            
                             

           
</div>
</asp:Content>
