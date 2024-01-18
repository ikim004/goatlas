<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ville.aspx.cs" Inherits="GoAtlass.Admins.Ville" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
 

                 <div>
         <h1 class="text-center " style="margin-top:3%; margin-bottom:2.25%; font-style: oblique;">Liste des Villes : </h1>
                        <div class=" justify-content-center align-items-center" style="margin-left:18% ; margin-bottom:2.5%;" >
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="false" CssClass="table w-75 text-center">
                <Columns>
                     <asp:BoundField DataField="idVille" HeaderText="Id "  > 
                         <HeaderStyle Font-Italic="True" Font-Size="Large" Height="45px" CssClass="text-light bg-success"  />
                          <ItemStyle Font-Italic="True" />

                     </asp:BoundField>
                      

                    <asp:BoundField DataField="nomVille" HeaderText="Ville" >
                            <HeaderStyle Font-Italic="True" Font-Size="Large" CssClass="text-light bg-success" />
                    </asp:BoundField>
                    <asp:BoundField DataField="differentiel" HeaderText="Differentiel" > 
                         <HeaderStyle Font-Italic="True" Font-Size="Large" CssClass="text-light bg-success" />
                    </asp:BoundField>

                    <asp:ButtonField CommandName="Select" Text="Edit"  ControlStyle-CssClass="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"  HeaderText="Action">
                    
                       <HeaderStyle Font-Italic="True" Font-Size="Large" CssClass="text-white bg-success" BackColor="#F1EAFF" />
                   
                     </asp:ButtonField>
                    
                </Columns>
                                <HeaderStyle  CssClass="text-white bg-success" />
                     </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click"  CssClass="btn btn-success " style="margin-left:58% ;  width:15%;"  />
                    
            
        </div>

</asp:Content>





