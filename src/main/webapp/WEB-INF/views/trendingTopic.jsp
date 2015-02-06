<%@page import="com.j2r2a.handshaker.model.Usuario"%>
<%@page import="com.j2r2a.handshaker.model.Categoria"%>
<%@ page import='java.util.*' %>
<%@ include file="../fragments/header.jspf" %>

<div id="cuerpo" class="container">
	<c:choose>
		<c:when test="${empty usuario}">
			<div class="col-md-12">
				<h3>
					<strong>Necesitas estar registrado para poder visitar el
					trending topic. Hazlo m&aacute;s arriba!</strong>
				</h3>
			</div>
		</c:when>
		<c:otherwise>
			<div class="col-md-12">
				<table class = "table table-striped">
					<thead>
						<tr>
							<th>Usuario</th>
							<th>Valoraci&oacute;n media</th>
						
						</tr>
					</thead>
					<tbody>
						<%int contador =0; %>
						<c:forEach items="${lista_usuarios}" var="u">
							
							<tr>
								
								<%
									ArrayList<Usuario> u2 = new ArrayList<Usuario>();
									u2= (ArrayList<Usuario>)request.getAttribute("lista_usuarios2");
									int media =0;
									int fin = u2.get(contador).getValoracion().size();
									for(int i=0; i < fin; i++){
										media= media+ u2.get(contador).getValoracion().get(i);
										
									}
									if(fin!=0){
										media= media / u2.get(contador).getValoracion().size();
									}
								%>
								
									<td>${u.alias}</td>					
									<td> <div class="progress-bar" role="progressbar" aria-valuenow="<%=media %>"
										aria-valuemin="0" aria-valuemax="10" style="width: <%=media %>0%;">
										<%=media %>
								
										</div>
									</td>
									<%contador = contador+1; %>
							
							</tr>
							
						</c:forEach>
					</tbody>
				
				</table>
			</div>
		
		</c:otherwise>
	</c:choose>	
	
</div>

<%@ include file="../fragments/footer.jspf" %>	