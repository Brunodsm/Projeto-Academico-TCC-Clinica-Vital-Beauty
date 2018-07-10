/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author bruno
 */
public class Agendamento {
    private int id;
    private String data;
    private String hora;
    private Tratamento tratamento;
    private int numeroSessao;
    private Cliente cliente;
    
    public Agendamento(){};
    
    public Agendamento(String data){
        this.data = data;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public Tratamento getTratamento() {
        return tratamento;
    }

    public void setTratamento(Tratamento tratamento) {
        this.tratamento = tratamento;
    }

    public int getNumeroSessao() {
        return numeroSessao;
    }

    public void setNumeroSessao(int numeroSessao) {
        this.numeroSessao = numeroSessao;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

   
}
