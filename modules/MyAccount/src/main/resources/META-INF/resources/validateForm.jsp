<script>
    /**
     * Funciones para validar los campos del formulario
     */

    //Variables
    const btnEnviar = document.querySelector('.btn-guardar');
    const form = document.querySelector('form-register');

    //Variables para campos
    const name = document.querySelector('.idname');
    const names = document.querySelector('.idnames');
    const phone = document.querySelector('.idphone');
    const lastname = document.querySelector('.idape');
    const mail = document.querySelector('.idmail');
    const passcurrent = document.querySelector('.idcurrent');
    const pass = document.querySelector('.idpas');
    const passrepeat = document.querySelector('.idpastwo');

    nameActive = false;
    phoneActive = false;
    mailActivate = false;
    passActivate = false;
    passrepeatActivate = false;
    passcurrentActive = false;

    //Expresion regular para validar correo
    const expre = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    //Expresion regular para validar contrasena
    const pasW = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*+-_?&])([A-Za-z\d$@$!%*+-_?&]|[^ ]){8,}$/;

    //Expresion regular para validar solo texto
    const text = /^[a-zA-Z]+[ a-zA-Z]+$/;

    const numb = /^[0-9]+([0-9]+)?$/;

    //Funciones que capturan el evento en el formulario
    eventListener();
    function eventListener() {
        document.addEventListener('DOMContentLoaded', iniciarRegister);
        iniciarRegisterPass();

        //Validacion de los campos del formulario
        name.addEventListener('blur', e => {
            if (e.target.classList.contains('idname')) {
                validateInputName(e);
            }
        });
        name.addEventListener('blur', e => {
            if (e.target.classList.contains('idnames')) {
                validateInputNamesDir(e);
            }
        });        
        phone.addEventListener('blur', e => {
            if (e.target.classList.contains('idphone')) {
                validateInputPhone(e);
            }
        });

        mail.addEventListener('blur', e => {
            if (e.target.classList.contains('idmail')) {
                validateInputMail(e);
            }
        });
        passcurrent.addEventListener('blur', e => {
            if (e.target.classList.contains('idcurrent')) {
                validateInputPassCurrent(e);
            }
        });        
        pass.addEventListener('blur', e => {
            if (e.target.classList.contains('idpas')) {
                validateInputPass(e);
            }
        });

        passrepeat.addEventListener('blur', e => {
            if (e.target.classList.contains('idpastwo')) {
                validateInputPassTwo(e);
            }
        });
    }

    //Validacion del input del nombre
    function validateInputName(e) {
        let msg = 'Ingresar un nombre valido';
        nom = name.value.length;
        if (nom === 0) {
            nameActive = false;
            name.classList.add('border', 'border-danger');
            name.classList.remove('border', 'border-success');
            showErrorName(msg);
            activateButton();
        }
        else {
            name.classList.add('border', 'border-danger');
            name.classList.remove('border', 'border-success');

            if (text.test(e.target.value)) {
                nameActive = true;
                activateButton();
                name.classList.remove('border-danger');
                name.classList.add('border', 'border-success');
                cleanError(e);


            } else {
                nameActive = false;
                name.classList.add('border', 'border-danger');
                name.classList.remove('border', 'border-success');
                showErrorName(msg);
                activateButton();
            }
        }
    }
    //Validacion del input del nombre de la cuenta
    function validateInputNamesDir(e) {
        console.log('Entra al nombre...');
        let msg = 'Ingresar un nombre valido';
        nom = names.value.length;
        if (nom === 0) {
            nameActive = false;
            names.classList.add('border', 'border-danger');
            names.classList.remove('border', 'border-success');
            showErrorName(msg);
            activateButton();
        }
        else {
            names.classList.add('border', 'border-danger');
            names.classList.remove('border', 'border-success');

            if (text.test(e.target.value)) {
                nameActive = true;
                activateButton();
                names.classList.remove('border-danger');
                names.classList.add('border', 'border-success');
                cleanError(e);


            } else {
                nameActive = false;
                names.classList.add('border', 'border-danger');
                names.classList.remove('border', 'border-success');
                showErrorName(msg);
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
    //Validacion del input del correo electronico
    function validateInputMail(e) {
        msg = 'Ingresar un correo electr\u00F3nico con un farmato v\u00E1lido';
        email = mail.value.length;
        if (email === 0) {
            mailActivate = false;
            mail.classList.add('border', 'border-danger');
            mail.classList.remove('border', 'border-success');
            showErrorMail(msg);
            activateButton();
        }
        else if (expre.test(e.target.value)) {
            mailActivate = true;
            activateButton();
            mail.classList.remove('border-danger');
            mail.classList.add('border', 'border-success');
            cleanError(e);
        } else {
            mailActivate = false;
            showErrorMail(msg);
            activateButton();
        }
    }
    //Validacion del input de la contrasena actual
    function validateInputPassCurrent(e) {
        passcur = passcurrent.value.length;
        msg = 'La contrase\u00F1a debe contar con un m\u00CDnimo de 8 caracteres alfanum\u00E9ricos, entre ellos un car\u00E1cter especial, una may\u00FAscula, una min\u00CDscula y n\u00FAmeros.';
        if (passcur === 0) {
            passcurrentActive = false;
            passcurrent.classList.add('border', 'border-danger');
            passcurrent.classList.remove('border', 'border-success');
            showErrorPswCurrent(msg);
            activateButtonPass();
        } else if (pasW.test(e.target.value)) {
                passcurrentActive = true;
                activateButtonPass();
                passcurrent.classList.remove('border', 'border-danger');
                passcurrent.classList.add('border', 'border-success');
                cleanError(e);
            } else {
                passcurrentActive = false;
                passcurrent.classList.add('border', 'border-danger');
                passcurrent.classList.remove('border', 'border-success');                
                showErrorPswCurrent(msg);
                activateButtonPass();
            }
        }

    //Validacion del input de la contrasena
    function validateInputPass(e) {
        msg = 'La contrase\u00F1a debe contar con un m\u00CDnimo de 8 caracteres alfanum\u00E9ricos, entre ellos un car\u00E1cter especial, una may\u00FAscula, una min\u00CDscula y n\u00FAmeros.';
        psw = pass.value.length;
        if (psw === 0) {
            passActivate = false;
            pass.classList.add('border', 'border-danger');
            pass.classList.remove('border', 'border-success');
            showErrorPsw(msg);
            activateButtonPass();
        } else {
            pass.classList.add('border', 'border-danger');
            pass.classList.remove('border', 'border-success');
            if (pasW.test(e.target.value)) {
                passActivate = true;
                activateButtonPass();
                pass.classList.remove('border-danger');
                pass.classList.add('border', 'border-success');
                cleanError(e);
            } else {
                passActivate = false;
                showErrorPsw(msg);
                activateButtonPass();
            }
        }
    }
    //Validacion del input de la confirmacion de la contrasena
    function validateInputPassTwo(e) {
        msg = 'Por favor, introduzca el mismo valor de la contrase\u00F1a nuevamente';
        psw = pass.value;
        passtwo = passrepeat.value;
        if (passtwo === 0) {
            passrepeatActivate = false;
            passrepeat.classList.add('border', 'border-danger');
            passrepeat.classList.remove('border', 'border-success');
            showErrorPswTwo(msg);
            activateButtonPass();
        } else {
            passrepeat.classList.add('border', 'border-danger');
            passrepeat.classList.remove('border', 'border-success');
            if (psw === passtwo) {
                if (pasW.test(e.target.value)) {
                    passrepeatActivate = true;
                    activateButtonPass();
                    passrepeat.classList.remove('border-danger');
                    passrepeat.classList.add('border', 'border-success');
                    cleanError(e);
                } else {
                    passrepeatActivate = false;
                    showErrorPswTwo(msg);
                    activateButtonPass();
                }
            } else {
                passrepeatActivate = false;
                showErrorPswTwo(msg);
                activateButtonPass();
            }
        }
    }

    //Deshabilita el boton de continuar si el formulario no esta lleno
    function iniciarRegister() {
        btnEnviar.disabled = true;
        btnEnviar.classList.add('btn-red-opacity');
    }

    function iniciarRegisterPass() {
        idBtnPass.disabled = true;
        idBtnPass.classList.add('btn-red-opacity');
    }

    //Funciones que muestran los errores en la pantalla
    function showErrorName(msg) {
        const mensajeErrorName = document.createElement('p');
        mensajeErrorName.textContent = msg;
        mensajeErrorName.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error', 'text-danger');
        const errorName = document.querySelectorAll('.has-error');
        const nomSelect = document.querySelector('.name-selector');
        if (errorName.length === 0) {
            nomSelect.appendChild(mensajeErrorName);
        }
    }
    function showErrorPhone(msg) {
        const mensajeErrorPhone = document.createElement('p');
        mensajeErrorPhone.textContent = msg;
        mensajeErrorPhone.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-phone', 'text-danger');
        const errorPhone = document.querySelectorAll('.has-error-phone');
        const phoneSelect = document.querySelector('.phone-selector');
        if (errorPhone.length === 0) {
            phoneSelect.appendChild(mensajeErrorPhone);
        }
    }
    function showErrorMail(msg) {
        const mensajeErrorMail = document.createElement('p');
        mensajeErrorMail.textContent = msg;
        mensajeErrorMail.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-mail', 'text-danger');
        const errorMail = document.querySelectorAll('.has-error-mail');
        const mailSelect = document.querySelector('.mail-selector');
        if (errorMail.length === 0) {
            mailSelect.appendChild(mensajeErrorMail);
        }
    }
    function showErrorPswCurrent(msg) {
        const mensajeErrorPswC = document.createElement('p');
        mensajeErrorPswC.textContent = msg;
        mensajeErrorPswC.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-pswc', 'text-danger');
        const errorPswc = document.querySelectorAll('.has-error-pswc');
        const pswSelectC = document.querySelector('.pass-current-selector');
        if (errorPswc.length === 0) {
            pswSelectC.appendChild(mensajeErrorPswC);
        }
    }    
    function showErrorPsw(msg) {
        const mensajeErrorPsw = document.createElement('p');
        mensajeErrorPsw.textContent = msg;
        mensajeErrorPsw.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-psw', 'text-danger');
        const errorPsw = document.querySelectorAll('.has-error-psw');
        const pswSelect = document.querySelector('.pass-selector');
        if (errorPsw.length === 0) {
            pswSelect.appendChild(mensajeErrorPsw);
        }
    }
    function showErrorPswTwo(msg) {
        const mensajeErrorPswTwo = document.createElement('p');
        mensajeErrorPswTwo.textContent = msg;
        mensajeErrorPswTwo.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-pswtwo', 'text-danger');
        const errorPswTwo = document.querySelectorAll('.has-error-pswtwo');
        const pswTwoSelect = document.querySelector('.pass-selector-two');
        if (errorPswTwo.length === 0) {
            pswTwoSelect.appendChild(mensajeErrorPswTwo);
        }
    }
    //Funcion que borra los mensajes de error
    function cleanError(e) {
        if (e.target.classList.contains('idname')) {
            const className = document.querySelector('.name-selector');
            if (className.children.length !== 1) {
                className.removeChild(className.children[1]);
            }
        }
        if (e.target.classList.contains('idphone')) {
            const classPhone = document.querySelector('.phone-selector');
            if (classPhone.children.length !== 1) {
                classPhone.removeChild(classPhone.children[1]);
            }
        }
        if (e.target.classList.contains('idmail')) {
            const classMail = document.querySelector('.mail-selector');
            if (e.target.value.length > 0) {
                classMail.removeChild(classMail.children[1]);
            }
        }
        if (e.target.classList.contains('idcurrent')) {
            const classPswC = document.querySelector('.pass-current-selector');
            if (classPswC.children.length !== 1) {
                classPswC.removeChild(classPswC.children[1]);
            }
        }        
        if (e.target.classList.contains('idpas')) {
            const classPsw = document.querySelector('.pass-selector');
            if (classPsw.children.length !== 1) {
                classPsw.removeChild(classPsw.children[1]);
            }
        }
        if (e.target.classList.contains('idpastwo')) {
            const classPswTwo = document.querySelector('.pass-selector-two');
            if (classPswTwo.children.length !== 1) {
                classPswTwo.removeChild(classPswTwo.children[1]);
            }
        }
    }

    //Habilita el boton una vez pase las validaciones

    function activateButton() {
        if (nameActive === true && phoneActive === true) {
            btnEnviar.disabled = false;
            btnEnviar.classList.remove('btn-red-opacity');
        } else {
            iniciarRegister();
        }
    }
    function activateButtonPass() {
        if (passcurrentActive === true && passActivate === true && passrepeatActivate === true) {
            idBtnPass.disabled = false;
            idBtnPass.classList.remove('btn-red-opacity');
        } else {
            iniciarRegisterPass();
        }
    }
 
    
    

</script>