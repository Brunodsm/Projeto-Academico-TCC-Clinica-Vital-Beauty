/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Agendamento;
import modelo.Cargo;
import modelo.Contrato;
import modelo.DAO.AgendamentoDAO;
import modelo.DAO.CargoDAO;
import modelo.DAO.ContratoDAO;
import modelo.DAO.TipoAcessoDAO;
import modelo.DAO.TratamentoDAO;
import modelo.Funcionario;
import modelo.Horario;
import modelo.TipoAcesso;
import modelo.Tratamento;

/**
 *
 * @author bruno
 */
public class ControleAgendamento extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String acao = request.getParameter("acao");
            
            
            if(acao.equals("busca Horarios")){
            String dtEscolhida = request.getParameter("txtDtEscolhida"); 
            int idCliente = Integer.parseInt(request.getParameter("idCliente"));
            int idTratamento = Integer.parseInt(request.getParameter("idTratamento"));
            Agendamento agendamento = new Agendamento(dtEscolhida);
            
            

            ArrayList<Horario> listHorarios = new ArrayList<Horario>();

            for (int i = 8; i <= 20; i++) {
                Horario hdisponiveis = new Horario();
                if (i < 10) {
                    hdisponiveis.setDescricao("0" + i + ":00");
                    hdisponiveis.setStatus("Disponível");
                } else {
                    hdisponiveis.setDescricao(i + ":00");
                    hdisponiveis.setStatus("Disponível");
                }
                listHorarios.add(hdisponiveis);

            }

            ArrayList<Agendamento> listaAgendamentos = new ArrayList<Agendamento>();
            AgendamentoDAO agenDAO = new AgendamentoDAO();
            listaAgendamentos = agenDAO.ConsultaDisponibilidadeHorario(agendamento);

            for (Horario h : listHorarios) {

                for (Agendamento g : listaAgendamentos) {

                    if (h.getDescricao().equals(g.getHora())) {
                        h.setStatus("Indisponível");
                    }
                }

            }
            
            request.setAttribute("idTratamento", idTratamento);
            request.setAttribute("idCliente", idCliente);
            request.setAttribute("dtEscolhida", dtEscolhida);
            request.setAttribute("listaHorarios", listHorarios);
            //encaminha o request para o J SP
            RequestDispatcher rd = request.getRequestDispatcher("AgendarHora.jsp");
            rd.forward(request, response);
            
            }else if (acao.equals("cmb")) {
                int idCliente = Integer.parseInt(request.getParameter("id"));
               
                //cria objeto
                TratamentoDAO tDAO = new TratamentoDAO();
                
                //executa o método listar
                ArrayList<Tratamento> tratamentos = tDAO.listar();
               
                //add a lista no obJ eto request   
                request.setAttribute("listaTratamentos", tratamentos);
                request.setAttribute("idCliente", idCliente);
                //encaminha o request para o J SP
                RequestDispatcher rd = request.getRequestDispatcher("AgendaTratamento.jsp");
                rd.forward(request, response);
            
            }  else if (acao.equals("Agendar")){
                
                int idCliente = Integer.parseInt(request.getParameter("id"));
                request.setAttribute("idCliente", idCliente);
               
                //encaminha o request para o J SP
                RequestDispatcher rd = request.getRequestDispatcher("ControleAgendamento?acao=cmb");
                rd.forward(request, response);
                
                
            } else if (acao.equals("Escolher")){
                
                int idTratamento = Integer.parseInt(request.getParameter("cmbTrat"));
                int idCliente = Integer.parseInt(request.getParameter("idCliente"));
                
                request.setAttribute("idCliente", idCliente);
                request.setAttribute("idTratamento", idTratamento);
                
                 RequestDispatcher rd = request.getRequestDispatcher("AgendarData.jsp");
                 rd.forward(request, response);
              
                 
            } else if (acao.equals("Escolher horário")){
                
                Horario horarioEscolhido = new Horario();
                horarioEscolhido.setDescricao(request.getParameter("cmbHorario"));
                
                String hora = horarioEscolhido.getDescricao();
                        
                String dtEscolhida = request.getParameter("dtEscolhida");
                int idTratamento = Integer.parseInt(request.getParameter("idTrat"));
                int idCliente = Integer.parseInt(request.getParameter("idCliente"));
                
                Tratamento tratamento = new Tratamento(idTratamento);
                Tratamento tratamento2 = new Tratamento(idTratamento);
                
                TratamentoDAO tDAO = new TratamentoDAO();
                tratamento2 = tDAO.BuscaTratamento(tratamento);
                
                String desTrat = tratamento2.getDescricao();
                
                request.setAttribute("idCliente", idCliente);
                request.setAttribute("idTratamento", idTratamento);
                request.setAttribute("descricaoTratamento", desTrat);
                request.setAttribute("dtEscolhida", dtEscolhida);
                request.setAttribute("horarioEscolhido", horarioEscolhido);
                
                
                 RequestDispatcher rd = request.getRequestDispatcher("ConfirmarAgen.jsp");
                 rd.forward(request, response);
                
            }
            

        } catch (Exception e) {
            request.setAttribute("erro", e.getMessage());
            RequestDispatcher rd = request.getRequestDispatcher("paginaErro.jsp");
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
