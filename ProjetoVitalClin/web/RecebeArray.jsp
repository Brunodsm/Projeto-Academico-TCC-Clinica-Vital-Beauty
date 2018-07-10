<%-- 
    Document   : RecebeArray
    Created on : 06/06/2018, 02:02:54
    Author     : bruno
--%>

<%@page import="modelo.Horario"%>
<%@page import="modelo.Cargo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%ArrayList<Horario> listaHorarios = (ArrayList<Horario>) request.getAttribute("listaHorarios");%>
    <body>
        <h1>Hello World!</h1>
        
         <select class="combo" name="cmbCargo">
                            
                            <%
                                for (Horario h : listaHorarios) {

                                    if (h.getStatus().equals("Disponível")) {
                            %>
                            

                            <option value="<%=h.getDescricao()%>"><%=h.getDescricao()%></option>

                            <%
                            } else {
                            %>

                            <%
                                    }

                                }
                            %> 
        </select>
    </body>
</html>
