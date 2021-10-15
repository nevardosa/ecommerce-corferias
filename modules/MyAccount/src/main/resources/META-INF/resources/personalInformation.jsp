
<portlet:renderURL var='addressPageURL'>
	<liferay-portlet:param name="jspPage" value="/address.jsp"/>
</portlet:renderURL>

<portlet:actionURL var="savePersonalDataURL" windowState="normal" name="savePersonalData">
</portlet:actionURL>

<portlet:actionURL var="changepaswordURL" windowState="normal" name="changepasword">
</portlet:actionURL>

<liferay-ui:error key="errormail" message="personalinformation.wrongmail" />

<%	String name = (String) renderRequest.getAttribute("name");  
	String email = (String) renderRequest.getAttribute("email");	
	String telephone = (String) renderRequest.getAttribute("telephone");
%>

<main class="contenedor-pass">
<section class="personalinformation">
<div class="nomb-ape text-color-red font-w ersonal-information-title">
    <liferay-ui:message key="personalinformation.datatitle"/>
</div>
<div class="box-personal-information">
    <div class="data">
    <div class="personal-data">
        <div class="text-fw text-personal-data">
            <liferay-ui:message key="personalinformation.datanamelast"/>
        </div>

        <div class="ligth-personal-data">
           <p><%= name %></p>
        </div>
    </div>
    <div class="personal-data">
        <div class="text-fw text-personal-data">
            <liferay-ui:message key="personalinformation.dataphone"/>
        </div>
        <div class="ligth-personal-data">
           <p><%=telephone %></p>
        </div>
    </div>    
    <div class="personal-data">
        <div class="text-fw text-personal-data">
            <liferay-ui:message key="personalinformation.datamail"/>
        </div>
        <div class="ligth-personal-data">
           <p><%= email %></p>
        </div>
    </div> 
</div>
<div class="edit-data">
    <button type="button" class="btn-red" data-bs-toggle="modal" data-bs-target="#personalinformation" data-bs-whatever="@getbootstrap">Editar</button>
</div>   
</div>
</section>
<section class="section-dir">
    <div class="nomb-ape text-color-red font-w personal-information-title">
        <liferay-ui:message key="personalinformation.datatitledir"/>
    </div>
    <div class="box-personal-information section-dir-two">
    <div class="nomb-ape text-color-red font-w personal-information-title add-dir">
        <div class="signe-more text-center">+</div>
        <div class="modal-data text-center">
            <liferay-ui:message key="personalinformation.dataadddir"/>
        </div>
		<a href="${addressPageURL}">Cambiar Direccion</a>
    </div> 
</div>   
</section>
<section class="seccion-pass">
    <div class="nomb-ape text-color-red font-w personal-information-title">
        <liferay-ui:message key="personalinformation.datatitlepass"/>
    </div>
    <div class="box-personal-information personal-data">
    <div class="nomb-ape text-color-red font-w personal-information-title change-passw">
        ******
    </div>  
    <div class="nomb-ape text-color-red font-w personal-information-title change-passw change-pass-text-rigth ">
        <button type="button" class="btn-change-pass font-w " data-bs-toggle="modal" data-bs-target="#change-passw" data-bs-whatever="@getbootstrap">Cambia tu contraseña</button>
        
    </div>      
</div>  
</section>
</main>

<!--Modal datos personales-->
<div class="modal-data personalinformation">
<aui:form id="formListCampaignPendingApproval" method="POST" action="<%= savePersonalDataURL%>">
<div class="modal fade" id="personalinformation" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="nomb-ape text-color-red font-w text-center">
        <liferay-ui:message key="personalinformation.datatitle"/>
      </div>      
      <div class="modal-body">
          <div class="mb-3">            
            <aui:input label="personalinformation.datanamelast" name="fullname" type="text" class="form-control" id="recipient-name" value="<%= name %>">
			</aui:input>
          </div>
          <div class="mb-3">
            <aui:input label="personalinformation.dataphone" name="phone" type="text" class="form-control" id="recipient-phone" value="<%= telephone %>">
            </aui:input>
          </div>
          <div class="mb-3">
            <aui:input label="personalinformation.datamail" name="mail" type="text" class="form-control" id="recipient-mail" value="<%= email %>">
            </aui:input>
          </div>          
      </div>
      <div class="modal-footer">
          <div class="modal-btn">
            <button type="button" class="btn-gray text-color-white font-w btn-cancel" data-bs-dismiss="modal">Cancelar</button>
          </div>
          <div class="modal-btn">
        <button type="submit" class="btn-red text-color-white font-w btn-continue">Guardar</button>
        </div>
      </div>
    </div>
  </div>
</div>
</aui:form>
</div>


<!--Modal cambio de contraseña-->
<div class="modal-data personalinformation">
    <aui:form id="formListCampaignPendingApproval" method="POST" action="<%= changepaswordURL%>">
    <div class="modal fade" id="change-passw" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="nomb-ape text-color-red font-w text-center">
            <liferay-ui:message key="personalinformation.datachangepass"/>
          </div>      
          <div class="modal-body">
              <div class="mb-3">
            	<aui:input label="personalinformation.datacurrentpass" name="password" type="text" class="form-control" id="recipient-pass" value="">
				</aui:input>
              </div>
              <div class="mb-3">
                <aui:input label="personalinformation.datanewpass" name="newpassword" type="text" class="form-control" id="recipient-newpass" value="">
				</aui:input>
              </div>
              <div class="mb-3">
              	<aui:input label="personalinformation.dataconfirmpass" name="confirnewpassword" type="text" class="form-control" id="recipient-connewpass" value="">
				</aui:input>
              </div>          
          </div>
          <div class="modal-footer">
              <div class="modal-btn">
                <button type="button" class="btn-gray text-color-white font-w btn-cancel" data-bs-dismiss="modal">Cancelar</button>
              </div>
              <div class="modal-btn">
            <button type="submit" class="btn-red text-color-white font-w btn-continue">Guardar</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    </aui:form>
    </div>