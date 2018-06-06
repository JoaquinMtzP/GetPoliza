<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Poliza.aspx.cs" Inherits="Poliza" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="main" Runat="Server">
    <div id="BodyPoliza">
       <h1>REPORTE DE POLIZAS</h1>
       <asp:DropDownList ID="DropDownListPeriodo" runat="server" CssClass="boton" ></asp:DropDownList>
       <asp:Label ID="LblEtiqueta" runat="server"></asp:Label>
       <asp:Button class="boton" runat="server" Text="Aceptar" OnClick="Button1_Click" />
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="idperiodo" Theme="Office2003Blue">
            <Columns>
                <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="CtaContable" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DEBE" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="HABER" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CUENTA" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="AUXILIAR" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="NO_AUXILIAR" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="idconcepto" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="idperiodo" VisibleIndex="8">
                </dx:GridViewDataTextColumn>
            </Columns>
            <Settings EnableFilterControlPopupMenuScrolling="True" ShowFilterBar="Visible" ShowFilterRow="True" ShowFilterRowMenu="True" />
            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
        </dx:ASPxGridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbNominaIpsosConnectionString %>" SelectCommand="SELECT * FROM [vw_PolizasIpsos_Entrega] WHERE ([idperiodo] = @idperiodo)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownListPeriodo" Name="idperiodo" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="footer" Runat="Server">
    
    </asp:Content>

