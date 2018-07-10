/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Agendamento;
import modelo.Funcionario;
import util.ConectaBanco;

/**
 *
 * @author bruno
 */
public class AgendamentoDAO {
     private static final String SELECT_ALL = "SELECT id, hora from agendamento where data=?;";
     
     
     private Object pstm;

   
    public ArrayList<Agendamento> ConsultaDisponibilidadeHorario(Agendamento agendamento) throws SQLException, ClassNotFoundException {
         
            //Conexao
            Connection conexao = ConectaBanco.getConexao();
            //cria comando SQL
            PreparedStatement pstmt = conexao.prepareStatement(SELECT_ALL);
            
             ArrayList<Agendamento> listaAgendamentos = new ArrayList<Agendamento>();

            pstmt.setString(1, agendamento.getData());
            //executa
            ResultSet rs = pstmt.executeQuery();

            // como a query ira retornar somente um registro, faremos o NEXT
            
             while (rs.next()) {
                 Agendamento novoAgendamento = new Agendamento();
                 novoAgendamento.setId(rs.getInt("id"));
                 novoAgendamento.setHora(rs.getString("hora"));
                 
                 listaAgendamentos.add(novoAgendamento);
             }
             
             return listaAgendamentos;
            
        }
            
    
    
}
