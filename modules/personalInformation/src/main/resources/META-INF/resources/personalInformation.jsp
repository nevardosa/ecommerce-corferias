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
           <p> Danilo</p>
        </div>
    </div>
    <div class="personal-data">
        <div class="text-fw text-personal-data">
            <liferay-ui:message key="personalinformation.dataphone"/>
        </div>
        <div class="ligth-personal-data">
           <p> 7878787</p>
        </div>
    </div>    
    <div class="personal-data">
        <div class="text-fw text-personal-data">
            <liferay-ui:message key="personalinformation.datamail"/>
        </div>
        <div class="ligth-personal-data">
           <p> danilo@mail.com</p>
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
<form id="formListCampaignPendingApproval" method="POST" action="">
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
            <liferay-ui:message key="personalinformation.datanamelast"/>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="mb-3">
            <liferay-ui:message key="personalinformation.dataphone"/>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="mb-3">
            <liferay-ui:message key="personalinformation.datamail"/>
            <input type="text" class="form-control" id="recipient-name">
          </div>          
      </div>
      <div class="modal-footer">
          <div class="modal-btn">
            <button type="button" class="btn-gray text-color-white font-w btn-cancel" data-bs-dismiss="modal">Cancelar</button>
          </div>
          <div class="modal-btn">
        <button type="button" class="btn-red text-color-white font-w btn-continue">Guardar</button>
        </div>
      </div>
    </div>
  </div>
</div>
</form>
</div>


<!--Modal cambio de contraseña-->
<div class="modal-data personalinformation">
    <form id="formListCampaignPendingApproval" method="POST" action="">
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
                <liferay-ui:message key="personalinformation.datacurrentpass"/>
                <input type="text" class="form-control" id="recipient-name">
              </div>
              <div class="mb-3">
                <liferay-ui:message key="personalinformation.datanewpass"/>
                <input type="text" class="form-control" id="recipient-name">
              </div>
              <div class="mb-3">
                <liferay-ui:message key="personalinformation.dataconfirmpass"/>
                <input type="text" class="form-control" id="recipient-name">
              </div>          
          </div>
          <div class="modal-footer">
              <div class="modal-btn">
                <button type="button" class="btn-gray text-color-white font-w btn-cancel" data-bs-dismiss="modal">Cancelar</button>
              </div>
              <div class="modal-btn">
            <button type="button" class="btn-red text-color-white font-w btn-continue">Guardar</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
    </div>
    



