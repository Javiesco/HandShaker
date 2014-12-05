 <%@ include file="../fragments/header.jspf" %> 

<div id="cuerpo" class="container">
					
				<div class="col-md-12">	
				
					<div id="cabecera-servicio" class="col-md-12">
					
						<div class="panel panel-primary">
						  <div class="panel-heading">
						    <h3 class="panel-title">${servicio.nombre}</h3>
						  </div>
						  <div class="panel-body">
						    ${servicio.descripcion}
						  </div>
					   </div>
											
					</div>
					
					<form role="form">
					
						<div id="cuerpo-servicio" class="col-md-12">
						
							<div id="cuerpo-servicio-izq" class="col-md-12">
							
							 	<h3 align="center"><strong>USUARIOS</strong></h3>
							 	
								  <div class="panel panel-success">
								    <div class="panel-heading">
								      <h4 class="panel-title">					
								          Lista de usuarios que ofrecen el servicio						        
								      </h4>
								    </div>
								      <div class="panel-body">
								      	<div class="checkbox">
								      	
								      	 <c:forEach items="${listaUsuariosServicio}" var="u">
								      		
										    <label>
											   
										      <input type="checkbox"><a href="mi_perfil?usuario=${u.id}">${u.alias}</a>
										    </label>
										    
										  </c:forEach> 
									  	</div>
								      </div>
								   
								  </div>						  					
							</div>
							
							<div id="cuerpo-servicio-der" class="col-md-12">
							
								<h4 align="center"><strong>Usuarios seleccionados:</strong></h4>
								
								<ol id="lista-usuarios-servicio">
								
								<li>
								
								  <div class="col-md-6">
								  																		  
										<h4>Paco</h4>
										<label>
										      <input type="checkbox">Ofrecer Servicio
										</label>
										
										<p>Seleccione servicio a ofrecer:</p>
										
										<div class="form-group">
										    <label for="inputCategoria3" class="col-sm-2 control-label">Categoría</label>
										    <div class="col-sm-10">
										    	<c:choose>
	      											<c:when test="${not empty u}">
														<c:forEach items="${listaServiciosUsuario}" var="s">
															<option>${s.nombre}</option>
														</c:forEach>
													</c:when>
													<c:otherwise>
														No tiene servicios.
													</c:otherwise>
												</c:choose>
										    
										       <select class="form-control">
										       
												  <option>Inform�tica</option>
												  <option>Cocina</option>
												  <option>Limpieza</option>
												  <option>Mudanzas</option>
												  <option>Coches</option>
												</select>
										    </div>
										</div>
										
										<div class="col-sm-12">
											<select class="form-control">
											  <option>Programacion Java</option>
											  <option>Programacion C++</option>
											  <option>Programacion Android</option>
											  <option>Programacion C</option>
											  <option>Programacion Web</option>
											</select>
										</div>
									 
								  </div> 
							</li>
								
								
							
							<li>
								<div class="col-md-6">
								
									  
										<h4>Pepe</h4>
										
										<label>
										      <input type="checkbox">Ofrecer Servicio
										</label>
										
										<p>Seleccione servicio a ofrecer:</p>
										
										<div class="form-group">
										    <label for="inputCategoria3" class="col-sm-2 control-label">Categor�a</label>
										    <div class="col-sm-10">
										       <select class="form-control">
												  <option>Inform�tica</option>
												  <option>Cocina</option>
												  <option>Limpieza</option>
												  <option>Mudanzas</option>
												  <option>Coches</option>
												</select>
										    </div>
										</div>
										
										<div class="col-sm-12">
											<select class="form-control">
											  <option>Programacion Java</option>
											  <option>Programacion C++</option>
											  <option>Programacion Android</option>
											  <option>Programacion C</option>
											  <option>Programacion Web</option>
											</select>
										</div>
										
									  
									  </div>
									</li>
								 
								</ol>
							
							</div>
							
						</div>	
				
				
					<div id="botones-servicio" class="col-md-12" align="center">
						
						<button type="submit" class="btn btn-success">Realizar Peticion</button>
						<button type="reset" class="btn btn-danger">Cancelar Peticion</button>
						
					</div>
					
				</form>
				
			</div>			
						
			
		 </div>
		 
		 <%@ include file="../fragments/footer.jspf" %>