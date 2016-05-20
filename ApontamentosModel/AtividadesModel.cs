using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ApontamentosModel
{
    public class AtividadesModel
    {
        public int CodigoAtividade { get; set; }
        public string NomeAtividade { get; set; }
        public int MesAtividade { get; set; }
        public DateTime HoraInicialAtividade { get; set; }
        public DateTime HoraFinalAtividade { get; set; }
        public DateTime HoraTotalAtividade { get; set; }
        public FuncionarioModel CodigoFuncionario { get; set; }
        public string DescricaoAtividade { get; set; }
    }
}