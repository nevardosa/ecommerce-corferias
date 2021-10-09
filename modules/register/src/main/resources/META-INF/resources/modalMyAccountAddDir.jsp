<section class="myaccount">
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div class="div-displ-ccount-block">
						<div class="nomb-ape color-ping-corferias font-w register-title">Agregar
							dirección</div>
					</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<form id="<portlet:namespace/>form-modal" action="${actionFormSelectFormatURL}" method="post"
						enctype="multipart/form-data" class="form-modal">
						<div class="register mb-2">
							<label for="department-id" class="col-form-label">Departamento</label>
							<select class="depto form-control form-select form-select-lg mb-3"
								aria-label=".form-select-lg example" name="deptoselect">
								<option selected disabled>Seleccionar</option>
								<option value="1">Cundinamarca</option>
								<option value="2">Meta</option>
								<option value="3">Choco</option>
							</select>
						</div>
						<div class="register mb-3">
							<label for="city-id" class="col-form-label" name="city">Ciudad</label>
							<select id="<portlet:namespace/>city-id" name="city"
								class="form-control city form-select form-select-lg mb-3"
								aria-label=".form-select-lg example">
								<option selected disabled>Seleccionar</option>
								<option value="1">Bogota</option>
								<option value="2">Tunja</option>
								<option value="3">Cali</option>
							</select>
						</div>
						<div class="register myaccountinput mb-3">
							<label for="neighborhood-id" class="col-form-label" name="<portlet:namespace/>neighborhood">Barrio</label>
							<input type="text" class="form-control neighborhood"
								id="<portlet:namespace/>neighborhood-id" name="neighborhood">
						</div>
						<div class="register myaccountinput mb-3">
							<label for="dir-name" class="col-form-label" name="direction">Dirección</label>
							<input type="text" class="form-control address" id="<portlet:namespace/>dir-name"
								name="address">
						</div>
						<div class="register myaccountinput mb-3">
							<label for="living-place-name"
								class="col-form-label">Torre/Apartamento/Conjunto/Oficina/Condominio</label>
							<input type="text" class="form-control house-name"
								id="<portlet:namespace/>living-place-name" name="livingplace">
						</div>
						<div class="modal-footer account">
							<div class="btncor">
								<button type="button" id="<portlet:namespace/>cancelar-id"
									name="<portlet:namespace/>btn-cancel" class="btn-close text-color-white font-w"
									data-bs-dismiss="modal">Cancelar</button>
							</div>
							<div class="btncor">
								<button click=(saveData()) type="submit" id="btnmodalcontinue"
									class="btn-red text-color-white font-w float-right btncontinue-modal">Guardar</button>
							</div>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
</section>