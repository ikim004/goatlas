<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Utulisateur.aspx.cs" Inherits="GoAtlass.Admins.Utulisateur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                         <div>
         <h1 class="text-center " style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;">Liste des Utilisateurs : </h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table text-center" >
                <Columns>
                     <asp:BoundField DataField="idUs" HeaderText="Id " Visible="false" > </asp:BoundField>
                    <asp:BoundField DataField="nomUts" HeaderText="Nom " > </asp:BoundField>
                    <asp:BoundField DataField="prenom" HeaderText="Prenom" > </asp:BoundField>
                    <asp:BoundField DataField="emailUs" HeaderText="Email" > </asp:BoundField>
                    <asp:BoundField DataField="passwordUs" HeaderText="Mot de Pass" > </asp:BoundField>
                    <asp:BoundField DataField="TypeUs" HeaderText=" Type User" > </asp:BoundField>
        
                    <asp:ButtonField CommandName="Select" Text="Edit" ControlStyle-CssClass="btn btn-success btn-block fa-lg gradient-custom-2 mb-3" HeaderText="Action" >
                    
<ControlStyle CssClass="btn btn-primary w-100"></ControlStyle>
                     </asp:ButtonField>
                    
                </Columns>
                                <HeaderStyle  CssClass="text-white bg-success" />
                         </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click1" CssClass="btn btn-success " style="margin-left:85% ;  width:15%;"  />
      

            
                             

           
</div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />

    
</asp:Content>
