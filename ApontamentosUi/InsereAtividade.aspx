<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsereAtividade.aspx.cs" Inherits="ApontamentosUi.InsereAtividade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
      $("#datepicker").datepicker();
      $("#InicioAtividade").datepicker();
      $("#fimAtividade").datepicker();
  });
  $(".data").datepicker({
      dateFormat: 'dd/mm/yy',
      dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
      dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
      dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
      monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
      monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
      nextText: 'Próximo',
      prevText: 'Anterior'
  });
  </script>
  
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td><asp:DropDownList ID="ddlFuncionarios" runat="server" OnSelectedIndexChanged="ddlFuncionarios_SelectedIndexChanged"></asp:DropDownList></td>
            </tr>
            <tr>
                <td>Inicio Atividade:</td> 
                <td><asp:TextBox ID="InicioAtividade" runat="server" OnTextChanged="InicioAtividade_TextChanged"></asp:TextBox></td>
                <td>Hora </td>
                <td><asp:TextBox ID="horaInicial" runat="server"  OnKeyUp="Mascara_Hora(this.value)"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Fim Atividade : </td>
                <td><asp:TextBox ID="fimAtividade" runat="server"></asp:TextBox></td>
                <td>Hora </td>
                <td><asp:TextBox ID="horFim" runat="server" OnKeyUp="Mascara_Hora(this.value)"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Atividade: </td>
               <td> <asp:TextBox ID="txtDescr" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
            </tr>
            <tr><asp:Label ID="lblMensagem" runat="server" ForeColor="Red" Visible="false" ></asp:Label></tr>
        </table>
        <asp:Button ID="Salvar" Text="Salvar Atividade" runat="server" OnClick="Salvar_Click"/>
    
        <br />
    </div>
    </form>
</body>
</html>
