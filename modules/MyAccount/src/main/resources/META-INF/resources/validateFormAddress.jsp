<script>
    /**
     * Funciones para validar los campos del formulario
     */

    //Variables para campos
    const direction = document.querySelector('.idaccount');
    const house = document.querySelector('.idhouse');
    const neiborh = document.querySelector('.idneibor');
    const city = document.querySelector('.idselectcity');
    const depto = document.querySelector('.iddepto');
    const names = document.querySelector('.idnames');
    const phone = document.querySelector('.idphone');
    const btnEnviar = document.querySelector('.btn-continue');
 
    directionActive = false;
    houseActive = false;
    neiborActive = false;
    cityActive = false;
    deptoActive = false;
    namesActive = false;
    phoneActive = false;

    //Expresion regular para validar solo texto
    const text = /^[a-zA-Z]+[ a-zA-Z]+$/;

    const numb = /^[0-9]+([0-9]+)?$/;

    //Funciones que capturan el evento en el formulario
    eventListener();
    function eventListener() {
        document.addEventListener('DOMContentLoaded', iniciarRegister);

        //Validacion de los campos del formulario
        names.addEventListener('blur', e => {
            if (e.target.classList.contains('idnames')) {
                validateInputNamesDir(e);
            }
        });        
        phone.addEventListener('blur', e => {
            if (e.target.classList.contains('idphone')) {
                validateInputPhone(e);
            }
        });
        direction.addEventListener('blur', e => {
            if (e.target.classList.contains('idaccount')) {
                validateInputDirection(e);
            }
        });
        house.addEventListener('blur', e => {
            if (e.target.classList.contains('idhouse')) {
                validateInputHouse(e);
            }
        });
        neiborh.addEventListener('blur', e => {
            if (e.target.classList.contains('idneibor')) {
                validateInputNeibor(e);
            }
        });        
        city.addEventListener('blur', e => {
            if (e.target.classList.contains('idselectcity')) {
                validateInputCity(e);
            }
        });         
        depto.addEventListener('blur', e => {
            if (e.target.classList.contains('iddepto')) {
                validateInputDepto(e);
            }
        });        
    }

    //Validacion del input del nombre de la cuenta
    function validateInputNamesDir(e) {
        let msg = 'Ingresar un nombre valido';
        nom = names.value.length;
        if (nom === 0) {
            namesActive = false;
            names.classList.add('border', 'border-danger');
            names.classList.remove('border', 'border-success');
            showErrorNamesDir(msg);
            activateButton();
        }
        else {
            names.classList.add('border', 'border-danger');
            names.classList.remove('border', 'border-success');

            if (text.test(e.target.value)) {
                namesActive = true;
                activateButton();
                names.classList.remove('border-danger');
                names.classList.add('border', 'border-success');
                cleanError(e);


            } else {
                namesActive = false;
                names.classList.add('border', 'border-danger');
                names.classList.remove('border', 'border-success');
                showErrorNamesDir(msg);
                activateButton();
            }
        }
    }       
    //Validacion del input del telefono
    function validateInputPhone(e) {
        let msg = 'Ingresar un n\u00FAmero tel\u00E9fonico v\u00E1lido';
        phon = phone.value.length;
        if (phon === 0) {
            phoneActive = false;
            phone.classList.add('border', 'border-danger');
            phone.classList.remove('border', 'border-success');
            showErrorPhone(msg);
            activateButton();
        } else {
            phone.classList.add('border', 'border-danger');
            phone.classList.remove('border', 'border-success');
            if (numb.test(e.target.value)) {
                phoneActive = true;
                activateButton();
                phone.classList.remove('border-danger');
                phone.classList.add('border', 'border-success');
                cleanError(e);
            } else {
                phoneActive = false;
                phone.classList.add('border', 'border-danger');
                phone.classList.remove('border', 'border-success');
                showErrorPhone(msg);
                activateButton();
            }
        }

    }
    //Validacion del input de la direccion
    function validateInputDirection(e) {
        msg = 'El campo direcci\u00F3n no puede estar vac\u00CDo';
        dir = direction.value.length;
        if (dir === 0) {
            directionActive = false;
            direction.classList.add('border', 'border-danger');
            direction.classList.remove('border', 'border-success');
            showErrorDir(msg);
            activateButton();
        }
        else {
            directionActive = true;
            activateButton();
            direction.classList.remove('border-danger');
            direction.classList.add('border', 'border-success');
            cleanError(e);
        }
    }
    //Validacion del input tipo vivienda
    function validateInputHouse(e) {
        msg = 'El campo torre/apto/conjunto/oficina/condominio, no puede estar vac\u00CDo';
        hous = house.value.length;
        if (hous === 0) {
            houseActive = false;
            house.classList.add('border', 'border-danger');
            house.classList.remove('border', 'border-success');
            showErrorHouse(msg);
            activateButton();
        }
        else {
            houseActive = true;
            activateButton();
            house.classList.remove('border-danger');
            house.classList.add('border', 'border-success');
            cleanError(e);
        }
    }
    //Validacion del input del barrio
    function validateInputNeibor(e) {
        msg = 'El campo barrio, no puede estar vac\u00CDo';
        neib = neiborh.value.length;
        if (neib === 0) {
            neiborActive = false;
            neiborh.classList.add('border', 'border-danger');
            neiborh.classList.remove('border', 'border-success');
            showErrorNeiborHood(msg);
            activateButton();
        }
        else {
            neiborActive = true;
            activateButton();
            neiborh.classList.remove('border-danger');
            neiborh.classList.add('border', 'border-success');
            cleanError(e);
        }
    }   
       
    //Validacion del input tipo ciudad
    function validateInputCity(e) {
        msg = 'Debe seleccionar una ciudad';
        if (e.target.value === 'Seleccionar') {
            cityActive = false;
            city.classList.add('border', 'border-danger');
            city.classList.remove('border', 'border-success');
            showErrorCity(msg);
            activateButton();
        }
        else {
            cityActive = true;
            activateButton();
            city.classList.remove('border-danger');
            city.classList.add('border', 'border-success');
            cleanError(e);
        }
    }        
    //Validacion del input departamento
    function validateInputDepto(e) {
        msg = 'Debe seleccionar un departamento';
        if (e.target.value === 'Seleccionar') {
            deptoActive = false;
            depto.classList.add('border', 'border-danger');
            depto.classList.remove('border', 'border-success');
            showErrorDepto(msg);
            activateButton();
        }
        else {
            deptoActive = true;
            activateButton();
            depto.classList.remove('border-danger');
            depto.classList.add('border', 'border-success');
            cleanError(e);
        }
    }     

    //Deshabilita el boton de continuar si el formulario no esta lleno
    function iniciarRegister() {
        btnEnviar.disabled = true;
        btnEnviar.classList.add('btn-red-opacity');
    }


    //Funciones que muestran los errores en la pantalla
    function showErrorNamesDir(msg) {
        const mensajeErrorNamesDir = document.createElement('p');
        mensajeErrorNamesDir.textContent = msg;
        mensajeErrorNamesDir.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error', 'text-danger');
        const errorNamesDir = document.querySelectorAll('.has-error');
        const nomSelectDir = document.querySelector('.dirnames-selector');
        if (errorNamesDir.length === 0) {
            nomSelectDir.appendChild(mensajeErrorNamesDir);
        }
    }
    function showErrorPhone(msg) {
        const mensajeErrorPhone = document.createElement('p');
        mensajeErrorPhone.textContent = msg;
        mensajeErrorPhone.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-phone', 'text-danger');
        const errorPhone = document.querySelectorAll('.has-error-phone');
        const phoneSelect = document.querySelector('.dirphone-selector');
        if (errorPhone.length === 0) {
            phoneSelect.appendChild(mensajeErrorPhone);
        }
    }
    function showErrorDir(msg) {
        const mensajeErrorDir = document.createElement('p');
        mensajeErrorDir.textContent = msg;
        mensajeErrorDir.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-dir', 'text-danger');
        const errorDir = document.querySelectorAll('.has-error-dir');
        const dirSelect = document.querySelector('.diraccount-selector');
        if (errorDir.length === 0) {
            dirSelect.appendChild(mensajeErrorDir);
        }
    }
    function showErrorHouse(msg) {
        const mensajeErrorHouse = document.createElement('p');
        mensajeErrorHouse.textContent = msg;
        mensajeErrorHouse.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-house', 'text-danger');
        const errorHouse = document.querySelectorAll('.has-error-house');
        const houseSelect = document.querySelector('.dirhouse-selector');
        if (errorHouse.length === 0) {
            houseSelect.appendChild(mensajeErrorHouse);
        }
    }
    function showErrorNeiborHood(msg) {
        const mensajeErrorNeibor = document.createElement('p');
        mensajeErrorNeibor.textContent = msg;
        mensajeErrorNeibor.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-neibor', 'text-danger');
        const errorNeibor = document.querySelectorAll('.has-error-neibor');
        const neiborSelect = document.querySelector('.dirneibor-selector');
        if (errorNeibor.length === 0) {
            neiborSelect.appendChild(mensajeErrorNeibor);
        }
    }
    function showErrorCity(msg) {
        const mensajeErrorCity = document.createElement('p');
        mensajeErrorCity.textContent = msg;
        mensajeErrorCity.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-city', 'text-danger');
        const errorCity = document.querySelectorAll('.has-error-city');
        const citySelect = document.querySelector('.dircity-selector');
        if (errorCity.length === 0) {
            citySelect.appendChild(mensajeErrorCity);
        }
    }
    function showErrorDepto(msg) {
        const mensajeErrorDepto = document.createElement('p');
        mensajeErrorDepto.textContent = msg;
        mensajeErrorDepto.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-depto', 'text-danger');
        const errorDepto = document.querySelectorAll('.has-error-depto');
        const deptoSelect = document.querySelector('.dirdepto-selector');
        if (errorDepto.length === 0) {
            deptoSelect.appendChild(mensajeErrorDepto);
        }
    }    
    //Funcion que borra los mensajes de error
    function cleanError(e) {
        if (e.target.classList.contains('idnames')) {
            const className = document.querySelector('.dirnames-selector');
            if (className.children.length !== 1) {
                className.removeChild(className.children[1]);
            }
        }
        if (e.target.classList.contains('idphone')) {
            const classPhone = document.querySelector('.dirphone-selector');
            if (classPhone.children.length !== 1) {
                classPhone.removeChild(classPhone.children[1]);
            }
        }
        if (e.target.classList.contains('idaccount')) {
            const classDirec = document.querySelector('.diraccount-selector');
            if (classDirec.children.length !== 1) {
                classDirec.removeChild(classDirec.children[1]);
            }
        }
        if (e.target.classList.contains('idhouse')) {
            const classHouse = document.querySelector('.dirhouse-selector');
            if (classHouse.children.length !== 1) {
                classHouse.removeChild(classHouse.children[1]);
            }
        }       
        if (e.target.classList.contains('idneibor')) {
            const classNeibor = document.querySelector('.dirneibor-selector');
            if (classNeibor.children.length !== 1) {
                classNeibor.removeChild(classNeibor.children[1]);
            }
        }       
        if (e.target.classList.contains('idselectcity')) {
            const classCity = document.querySelector('.dircity-selector');
            if (classCity.children.length !== 1) {
                classCity.removeChild(classCity.children[1]);
            }
        }         
        if (e.target.classList.contains('iddepto')) {
            const classDepto = document.querySelector('.dirdepto-selector');
            if (classDepto.children.length !== 1) {
                classDepto.removeChild(classDepto.children[1]);
            }
        }      
    }

    //Habilita el boton una vez pase las validaciones
    function activateButton() {
        if (directionActive === true && houseActive === true && neiborActive === true && cityActive === true && deptoActive === true && namesActive === true && phoneActive === true) {
            btnEnviar.disabled = false;
            btnEnviar.classList.remove('btn-red-opacity');
        } else {
            iniciarRegister();
        }
    }
 </script>