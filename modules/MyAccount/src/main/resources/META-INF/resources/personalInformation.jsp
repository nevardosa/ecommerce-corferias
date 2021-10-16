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
      <liferay-ui:message key="personalinformation.datatitle" />
    </div>
    <div class="box-personal-information">
      <div class="data">
        <div class="personal-data">
          <div class="text-fw text-personal-data">
            <liferay-ui:message key="personalinformation.datanamelast" />
          </div>
          <div class="ligth-personal-data">
            <p><%= name %></p>
         </div>
        </div>
        <div class="personal-data">
          <div class="text-fw text-personal-data">
            <liferay-ui:message key="personalinformation.dataphone" />
          </div>
          <div class="ligth-personal-data">
            <p><%=telephone %></p>
         </div>
        </div>
        <div class="personal-data">
          <div class="text-fw text-personal-data">
            <liferay-ui:message key="personalinformation.datamail" />
          </div>
          <div class="ligth-personal-data">
            <p><%= email %></p>
         </div>
        </div>
      </div>
      <div class="edit-data">
        <div class="text-color-red" data-bs-toggle="modal" data-bs-target="#personalinformation" data-bs-whatever="@getbootstrap">
          <div class="editar">
            <img id="editar" src="<%=renderRequest.getContextPath()%>/images/Editar.svg" alt="Editar">
          </div>
          <div class="editar">
            <liferay-ui:message key="personalinformation.databtnedit" />
          </div>
          
        </div>
      </div>
    </div>
  </section>
  <section class="section-dir">
    <div class="nomb-ape text-color-red font-w personal-information-title">
      <liferay-ui:message key="personalinformation.datatitledir" />
    </div>
    <div class="box-personal-information section-dir-two">
      <div class="nomb-ape text-color-red font-w personal-information-title add-dir">
        <a href="${addressPageURL}">
        <div class="signe-more text-center text-color-red">+</div>
        <div class="modal-data text-center text-color-red">
          <liferay-ui:message key="personalinformation.dataadddir" />
        </div>
      </a>
      </div>
    </div>
  </section>
  <section class="seccion-pass">
    <div class="nomb-ape text-color-red font-w personal-information-title">
      <liferay-ui:message key="personalinformation.datatitlepass" />
    </div>
    <div class="box-personal-information personal-data">
      <div class="nomb-ape text-color-red font-w personal-information-title change-passw">
        <liferay-ui:message key="personalinformation.datasteris" />
      </div>
      <div class="nomb-ape text-color-red font-w personal-information-title change-passw change-pass-text-rigth ">
        <button type="button" class="btn-change-pass font-w " data-bs-toggle="modal" data-bs-target="#change-passw"
          data-bs-whatever="@getbootstrap">        
          <liferay-ui:message key="personalinformation.dataschangepasstitle" />
        </button>

      </div>
    </div>
  </section>
</main>

<!--Modal datos personales-->
<div class="modal-data personalinformation">
  <aui:form id="formPersonalInformation" method="POST" action="<%= savePersonalDataURL%>">
    <div class="modal fade" id="personalinformation" tabindex="-1" aria-labelledby="exampleModalLabel"
      aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="nomb-ape text-color-red font-w text-center">
            <liferay-ui:message key="personalinformation.datatitle" />
          </div>
          <div class="modal-body">
            <div class="mb-3 name-selector">
              <liferay-ui:message key="personalinformation.datanamelast" />
              <input name="fullname" type="text" class="form-control idname" id="recipient-name" value="<%= name %>">
            </div>
            <div class="mb-3 phone-selector">
              <liferay-ui:message key="personalinformation.dataphone" />
              <input name="phone" type="text" class="form-control idphone" id="recipient-phone" value="<%= telephone %>">              
            </div>
            <div class="mb-3 mail-selector">
              <liferay-ui:message key="personalinformation.datamail" />
              <input name="mail" type="text" class="form-control idmail" id="recipient-mail" value="<%= email %>" disabled>              
            </div>
          </div>
          <div class="modal-footer">
            <div class="modal-btn">
              <button type="button" class="btn-gray text-color-white font-w btn-cancel" data-bs-dismiss="modal">
                <liferay-ui:message key="personalinformation.databtncancel"/></button>
            </div>
            <div class="modal-btn">
              <button type="button" class="btn-red text-color-white font-w btn-guardar" id="btnEnviar">
                <liferay-ui:message key="personalinformation.databtnsave"/>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </aui:form>
</div>


<!--Modal cambio de contrase�a-->
<div class="modal-data personalinformation">
  <aui:form id="formPersonalPass" method="POST" action="<%= changepaswordURL%>">
    <div class="modal fade" id="change-passw" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="nomb-ape text-color-red font-w text-center">
            <liferay-ui:message key="personalinformation.datachangepass" />
          </div>
          <div class="modal-body">
            <div class="mb-3 pass-current-selector">
              <liferay-ui:message key="personalinformation.datacurrentpass" />
              <input name="password" type="password" class="form-control idcurrent" id="recipient-pass" value="">
            </div>
            <div class="mb-3 pass-selector">
              <liferay-ui:message key="personalinformation.datanewpass" />
              <input name="newpassword" type="password" class="form-control idpas" id="recipient-newpass" value="">
            </div>
            <div class="mb-3 pass-selector-two">
              <liferay-ui:message key="personalinformation.dataconfirmpass" />
              <input name="confirnewpassword" type="password" class="form-control idpastwo" id="recipient-connewpass" value="">
            </div>
          </div>
          <div class="modal-footer">
            <div class="modal-btn">
              <button type="button" class="btn-gray text-color-white font-w btn-cancel" data-bs-dismiss="modal">
                <liferay-ui:message key="personalinformation.databtncancel"/></button>
              </button>
            </div>
            <div class="modal-btn">
              <button type="button" class="btn-red text-color-white font-w btn-continue" id="idBtnPass">
                <liferay-ui:message key="personalinformation.databtnsave"/>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </aui:form>
</div>

<%@include file="validateForm.jsp"%>
