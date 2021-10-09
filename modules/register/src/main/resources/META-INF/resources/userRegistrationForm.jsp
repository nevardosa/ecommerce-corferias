<%@ include file="/init.jsp" %>
	<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
		<div class="nomb-ape text-color-red font-w register-title">Completa tus datos</div>
		<section class="box-register">
			<aui:form id="idFormRegister" name="formRegister" class="form-register" method="POST" action="${xxxxxx}">
				<div class="nomb-ape text-color-red font-w register-title">Personas</div>
				<div class="nomb-ape">
					<div class="text-w-100 nomape-inpu" id="nam">
						<div class="label-nom-ape">
							<label for="regnom" class="form-label">Nombres <span class="text-danger">*</span></label>
						</div>
						<div class="register mb-2 nom-ape-w nomape-inpu name-selector">
							<input type="text" name="<portlet:namespace/>regnom" class="form-control idname"
								id="<portlet:namespace/>regnom">
						</div>
					</div>
					<div class="text-w-100 nomape-inpu" id="ape">
						<div class="label-nom-ape">
							<label for="regape" class="form-label">Apellidos <span class="text-danger">*</span></label>
						</div>
						<div class="register mb-2 nom-ape-w nomape-inpu ape-selector">
							<input type="text" name="<portlet:namespace/>regape" class="form-control idape"
								id="<portlet:namespace/>regape">
						</div>
					</div>
				</div>
				<div class="mb-3 register mail-selector">
					<label for="regmail" class="form-label">Correo electronico <span
							class="text-danger">*</span></label>
					<input type="email" name="<portlet:namespace/>regmail" class="form-control idmail"
						id="<portlet:namespace/>regmail">
				</div>
				<div class="nomb-ape">
					<div class="text-w-100 nomape-inpu">
						<div class="mb-3 register pass-selector">
							<div class="label-nom-ape">
								<label for="regpas" class="form-label">Contrase&ntilde;a <span
										class="text-danger">*</span></label>
							</div>
							<div class="register mb-3 nom-ape-w nomb-ape nomape-inpu">
								<input type="password" name="<portlet:namespace/>regpas" class="form-control idpas"
									id="<portlet:namespace/>regpas">
							</div>
						</div>
					</div>
					<div class="text-w-100 nomape-inpu">
						<div class="mb-3 register pass-selector-two">
							<div class="label-nom-ape">
								<label for="regpasdos" class="form-label">Confirmar Contrase&ntilde;a <span
										class="text-danger">*</span></label>
							</div>
							<div class="register mb-3 nom-ape-w nomb-ape nomape-inpu">
								<input type="password" name="<portlet:namespace/>regpastwo"
									class="form-control idpastwo" id="<portlet:namespace/>regpastwo">
							</div>

						</div>
					</div>
				</div>
				<div class="nomb-ape">
					<div class="captcha">
						<portlet:resourceURL id="captcha" var="captchaResourceURL" />
						<liferay-captcha:captcha url="<%= captchaResourceURL %>" />
					</div>
					<div class="btncor">
						<button type="submit" id="btnContinuar"
							class="btn-red text-color-white font-w float-right btn-continue">Continuar</button>
					</div>

				</div>
			</aui:form>

		</section>
		<%@include file="/validateForm.jsp" %>