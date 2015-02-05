<%@ include file="../fragments/header.jspf" %>> 

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
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${lista_usuarios}" var="u">
							<tr>
					
								<td>${u.alias}</td>
								<td>${u.nombre}</td>
							</tr>
						</c:forEach>
					</tbody>
				
				</table>
			</div>
		
		</c:otherwise>
	</c:choose>	
</div>

<%@ include file="../fragments/footer.jspf" %>	