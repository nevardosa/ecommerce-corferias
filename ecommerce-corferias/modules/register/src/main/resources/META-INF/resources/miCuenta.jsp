<%@ include file="/init.jsp" %>

	<portlet:actionURL name="loadParms" var="loadParms" />

	<portlet:actionURL var="loadURL" windowState="normal" name="loadParms">
	</portlet:actionURL>

	<section class="box-register">
		<aui:form name="account" id="formAccountId" class="formAccount">
			<div class="div-displ-ccount-block">
				<div class="nomb-ape color-ping-corferias font-w register-title">Datos Personales</div>
			</div>
			<main class="div-displ-ccount div-border-account">
				<article class="div-disp-account-one">
					<div class="div-disp-account-one">
						<div class="div-displ-text-acc text-fw normal-text">
							Nombres y apellidos
						</div>
						<div class="normal-text div-displ-text-acc">
							Carlos Lopez
						</div>
					</div>
					<div class="div-disp-account-one">
						<div class="div-displ-text-acc text-fw normal-text">
							Telefono
						</div>
						<div class="normal-text div-displ-text-acc">
							$300.000
						</div>
					</div>
					<div class="div-disp-account-one">
						<div class="div-displ-text-acc text-fw normal-text">
							Correo electronico
						</div>
						<div class="normal-text div-displ-text-acc">
							Micorreo@mail.com
						</div>
					</div>
				</article>
				<div class="btn-delete">
					<button name="submitButton" id="ibtnacountedit" type="submit">Editar</button>
				</div>
			</main>
			<div class="div-disp-account-one">
				<div class="div-displ-ccount-block">
					<div class="nomb-ape color-ping-corferias font-w register-title">Direcciones</div>
				</div>
			</div>
			<div class="contendor">
				<article class="input-address">
					<main class="div-displ-ccount div-border-account">
						<div class="div-disp-account-one">
							<div class="div-disp-account-one">
								<div class="normal-text div-displ-text-acc">
									Calle 123
								</div>
							</div>
							<div class="div-disp-account-one">
								<div class="normal-text div-displ-text-acc">
									Torre 25
								</div>
							</div>
							<div class="div-disp-account-one">
								<div class="normal-text div-displ-text-acc">
									Bogota - La soledad
								</div>
							</div>
							<div class="div-disp-account-one">
								<div class="normal-text div-displ-text-acc">
									Cundinamarca
								</div>
							</div>
						</div>
						<div class="btn-delete">
							<button name="submitButton" id="ibtnacountedituno" type="submit">Editar</button>
						</div>
						<div class="btn-delete">
							<button name="submitButton" id="ibtnacounteditdos" type="submit">Editar</button>
						</div>
					</main>
				</article>
				<article class="input-address color-ping-corferias add-address-account div-border-account"
					data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">
					<div class="div-disp-account-one">
						+
					</div>
					<div class="div-disp-account-one">
						Agregar dirección
					</div>
				</article>
			</div>


		</aui:form>

	</section>
	<%@ include file="/modalMyAccountAddDir.jsp"%>
	<%@include file="/validateMyAccount.jsp"%>