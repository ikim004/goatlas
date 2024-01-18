<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Station.aspx.cs" Inherits="GoAtlass.Admins.Station" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <div>
         <h1 class="text-center"  style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;">Liste des Stations  </h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table text-center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  > 

                <Columns>
                     <asp:BoundField DataField="idStation" HeaderText="Id " > </asp:BoundField>
                    <asp:BoundField DataField="nomStation" HeaderText="Nom " > </asp:BoundField>
                    <asp:BoundField DataField="adresse" HeaderText="Adresse" > </asp:BoundField>
                    <asp:BoundField DataField="ipPrive" HeaderText="Ip Privé" > </asp:BoundField>
                    <asp:BoundField DataField="posNum" HeaderText="N° pos" > </asp:BoundField>
                    <asp:BoundField DataField="PrixG" HeaderText=" Prix Gazoil" > </asp:BoundField>
                    <asp:BoundField DataField="prixlimpio" HeaderText="Prix Limpio" > </asp:BoundField>
                    <asp:BoundField DataField="prixSSP" HeaderText="Prix Ssp " > </asp:BoundField>
                    <asp:BoundField DataField="ippublic" HeaderText="Ip Public " > </asp:BoundField>
                    <asp:BoundField DataField="nomVille" HeaderText="Ville" > </asp:BoundField>
                    <asp:BoundField DataField="idGerant" HeaderText="Nom Gerant" > </asp:BoundField>
                    <asp:BoundField DataField="Active" HeaderText="Statut" > </asp:BoundField>
                    <asp:ButtonField CommandName="Select" Text="Edit" ControlStyle-CssClass="btn btn-success btn-block fa-lg gradient-custom-2 mb-3" HeaderText="Action" >
                    
<ControlStyle CssClass="btn btn-primary w-100"></ControlStyle>
                     </asp:ButtonField>
                    
                </Columns>
              
                <HeaderStyle  CssClass="text-white bg-success" />
              
            </asp:GridView>
           
            <asp:Button ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click" CssClass="btn btn-success " style="margin-left:85% ;  width:15%;"   />
          
 
        </div>
</asp:Content>
