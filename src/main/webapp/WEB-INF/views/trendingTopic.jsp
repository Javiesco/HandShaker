<%@page import="com.j2r2a.handshaker.model.Usuario"%>
<%@page import="com.j2r2a.handshaker.model.Categoria"%>
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
							<th>Valoraci&aacute;on</th>
							<th>media</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${lista_usuarios}" var="u">
							<tr>
							<%
								int media= 8;
								
								%>
								<td>${u.alias}</td>
								<td>${u.valoracion}</td>
								<td> <div class="progress-bar" role="progressbar" aria-valuenow="<%=media %>"
							aria-valuemin="0" aria-valuemax="10" style="width: <%=media %>0%;">
							<%=media %>
						</div></td>
							</tr>
						</c:forEach>
					</tbody>
				
				</table>
			</div>
		
		</c:otherwise>
	</c:choose>	
	
</div>

<%@ include file="../fragments/footer.jspf" %>	