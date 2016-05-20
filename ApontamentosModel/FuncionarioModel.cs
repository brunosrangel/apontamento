using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ApontamentosModel
{
    public class FuncionarioModel
    {
        public int CodigoFuncionario { get; set; }
        public string NomeFuncionario { get; set; }
        public DepartamentoModel CodigoDepartamento { get; set; }
    }
}