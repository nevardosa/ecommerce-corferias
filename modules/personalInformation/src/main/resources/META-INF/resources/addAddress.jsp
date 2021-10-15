<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ include file="/init.jsp" %>
		<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
			<div class="text-color-red font-w register-title">
				<liferay-ui:message key="personalinformation.dataadddiraccount" />
			</div>
			<section class="box-register addaddress">
				<aui:form id="idFormRegister" name="formRegister" class="form-register" method="POST"
					action="${xxxxxx}">
					<div class="mt-4">
						<div class="text-w-100 nomape-inpu" id="diraccount">
							<div class="label-nom-ape">
								<label for="diracc" class="form-label">
									<liferay-ui:message key="personalinformation.datadiraccount" />
								</label>
							</div>
							<div class="register mb-2 nom-ape-w nomape-inpu diraccount-selector">
								<input type="text" name="<portlet:namespace/>diraccount" class="form-control idaccount"
									id="<portlet:namespace/>diraccount">
							</div>
						</div>
					</div>					
					<div class="mt-4">
						<div class="text-w-100 nomape-inpu" id="dirhouse">
							<div class="label-nom-ape">
								<label for="dirhou" class="form-label">
									<liferay-ui:message key="personalinformation.datadirhouse" />
								</label>
							</div>
							<div class="register mb-2 nom-ape-w nomape-inpu dirhouse-selector">
								<input type="text" name="<portlet:namespace/>dirhouse" class="form-control idhouse"
									id="<portlet:namespace/>dirhouse">
							</div>
						</div>
					</div>
					<div class="mt-4">
						<div class="text-w-100 nomape-inpu" id="dirneibor">
							<div class="label-nom-ape">
								<label for="dirnei" class="form-label">
									<liferay-ui:message key="personalinformation.dataneighborhood" />
								</label>
							</div>
							<div class="register mb-2 nom-ape-w nomape-inpu dirneibor-selector">
								<input type="text" name="<portlet:namespace/>dirneibor" class="form-control idneibor"
									id="<portlet:namespace/>dirneibor">
							</div>
						</div>
					</div>
					<div class="mt-4">
						<div class="text-w-100 nomape-inpu" id="dircity">
							<div class="label-nom-ape">
								<label for="dircity" class="form-label">
									<liferay-ui:message key="personalinformation.datacity" />
								</label>
							</div>
							<div class="register mb-2 nom-ape-w nomape-inpu dircity-selector idcity">
									<select class="form-select form-select-round" aria-label="Default select example">
										<option selected>Seleccionar</option>
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									  </select>	
							
							</div>
						</div>
					</div>
					<div class="mt-4">
						<div class="text-w-100 nomape-inpu" id="dirdepto">
							<div class="label-nom-ape">
								<label for="dirdep" class="form-label">
									<liferay-ui:message key="personalinformation.datadepto" />
								</label>
							</div>
							<div class="register mb-2 nom-ape-w nomape-inpu dirdepto-selector iddepto">
									<select class="form-select form-select-round" aria-label="Default select example">
										<option selected>Seleccionar</option>
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									  </select>	
							</div>
						</div>
					</div>
					<div class="mt-4">
						<div class="text-w-100 nomape-inpu" id="dirnames">
							<div class="label-nom-ape">
								<label for="dirname" class="form-label">
									<liferay-ui:message key="personalinformation.datacompletenames" />
								</label>
							</div>
							<div class="register mb-2 nom-ape-w nomape-inpu dirnames-selector idnames">
								<input type="text" name="<portlet:namespace/>dirnames" class="form-control id"
									id="<portlet:namespace/>dirnames">
							</div>
						</div>
					</div>
					<div class="mt-4">
						<div class="text-w-100 nomape-inpu" id="dirphone">
							<div class="label-nom-ape">
								<label for="dirphon" class="form-label">
									<liferay-ui:message key="personalinformation.datacontactphone" />
								</label>
							</div>
							<div class="register mb-2 nom-ape-w nomape-inpu ape-selector idphone">
								<input type="text" name="<portlet:namespace/>dirphone" class="form-control idape"
									id="<portlet:namespace/>dirphone">
							</div>
						</div>
					</div>
					<div class="divbtn mt-5">
						<div class="modal-btn">
							<button type="button" class="btn-gray text-color-white font-w btn-cancel" data-bs-dismiss="modal">
								<liferay-ui:message key="personalinformation.databtncancel" />
							</button>
						</div>
						<div class="modal-btn">
							<button type="button" class="btn-red text-color-white font-w btn-continue">
								<liferay-ui:message key="personalinformation.databtnsave" />
							</button>
						</div>
					</div>
				</aui:form>

			</section>
			<%@include file="/validateForm.jsp"%>