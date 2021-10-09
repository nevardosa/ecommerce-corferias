<script>
    /**
     * Funciones para validar los campos del formulario
     */

     
     
    //Variables
    const btnEnviar = document.querySelector('.btn-continue');
    const form = document.querySelector('form-register');

    //Variables para campos
    const name = document.querySelector('#<portlet:namespace />name');
    const lastname = document.querySelector('#<portlet:namespace />lastName');
   // const phone = document.querySelector('#<portlet:namespace />phone');
    const mail = document.querySelector('.idmail');
    const pass = document.querySelector('.idpas');
    const passrepeat = document.querySelector('.idpastwo');

    nameActive = false;
    lastnameActive = false;
    mailActivate = false;
    passActivate = false;
    passrepeatActivate = false;
    let n = 0;

    //Expresion regular para validar correo
    const expre = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    //Expresion regular para validar contrasena
    const pasW = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*+-_?&])([A-Za-z\d$@$!%*+-_?&]|[^ ]){8,}$/;

    //Expresion regular para validar solo texto
    const text = /^[a-zA-Z]+[ a-zA-Z]+$/;

    //Funciones que capturan el evento en el formulario
    eventListener();
    function eventListener() {
    	console.log('Entra al listener');
        document.addEventListener('DOMContentLoaded', iniciarRegister);

        //Validacion de los campos del formulario
        name.addEventListener('blur', e => {
                validateInputName(e);
        });
        lastname.addEventListener('blur', e => {
                validateInputLastName(e);
        });
        phone.addEventListener('blur', e => {
        	console.log('Campo name: ', name.value);
            validateInputPhone(e);
        });
        
        mail.addEventListener('blur', e => {
            if (e.target.classList.contains('idmail')) {
                validateInputMail(e);
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
        n = 1;
        nom = name.value.length;
        if (nom === 0) {
            nameActive = false;
            name.classList.add('border', 'border-danger');
            name.classList.remove('border', 'border-success');
            showErrorName(msg);
           // activateButton();
        }
        else {
            if (text.test(e.target.value)) {
                  nameActive = true;
                //activateButton();
                name.classList.remove('border', 'border-danger');
                name.classList.add('border', 'border-success');
                cleanError(e, n);
            } else {
                nameActive = false;
                name.classList.add('border', 'border-danger');
                name.classList.remove('border', 'border-success');
                showErrorName(msg);
                //activateButton();
            }
        }
    }
    //Validacion del input del apellido
    function validateInputLastName(e) {
    	n = 2;
        let msg = 'Ingresar un apellido valido';
        lastName = lastname.value.length;
        if (lastName === 0) {
            lastnameActive = false;
            lastname.classList.add('border', 'border-danger');
            lastname.classList.remove('border', 'border-success');
            showErrorLastName(msg);
            //activateButton();
        } else {
            if (text.test(e.target.value)) {
            	console.log('--- Entra al apellido');
                lastnameActive = true;
               // activateButton();
                lastname.classList.remove('border', 'border-danger');
                lastname.classList.add('border', 'border-success');
                cleanError(e, n);
            } else {
                lastnameActive = false;
                lastname.classList.add('border', 'border-danger');
                lastname.classList.remove('border', 'border-success');
                showErrorLastName(msg);
                //activateButton();
            }
        }

    }
    //Validacion del input del telefono
   /* function validateInputPhone(e) {
    	console.log('Entra al telefono');
    	n = 3;
        let msg = 'Ingresar un numero de tel�fono valido';
        pho = phone.value.length;
        if (pho === 0) {
            lastnameActive = false;
            phone.classList.add('border', 'border-danger');
            phone.classList.remove('border', 'border-success');
           showErrorLastName(msg);
            activateButton();
        } else {
            if (pho > 6)) {
            	console.log('--- Entra al apellido');
                lastnameActive = true;
                activateButton();
                phone.classList.remove('border', 'border-danger');
                phone.classList.add('border', 'border-success');
               cleanError(e, n);
            } else {
               lastnameActive = false;
                phone.classList.add('border', 'border-danger');
                phone.classList.remove('border', 'border-success');
                showErrorPhone(msg);
                activateButton();
            }
        }
    }*/    
    //Validacion del input del correo electronico
    function validateInputMail(e) {
        msg = 'Ingresar un correo electronico con un farmato valido';
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
    //Validacion del input de la contrasena
    function validateInputPass(e) {
        psw = pass.value.length;
        if (psw === 0) {
            passActivate = false;
            pass.classList.add('border', 'border-danger');
            pass.classList.remove('border', 'border-success');
            showErrorPsw('La contraseña debe contar con un mínimo de 8 caracteres alfanuméricos, entre ellos un carácter especial, una mayúscula, una minúscula y números.');
            activateButton();
        } else {
            pass.classList.add('border', 'border-danger');
            pass.classList.remove('border', 'border-success');

            if (pasW.test(e.target.value)) {
                passActivate = true;
                activateButton();
                pass.classList.remove('border-danger');
                pass.classList.add('border', 'border-success');
                cleanError(e);
            } else {
                passActivate = false;
                showErrorPsw('La contraseña debe contar con un mínimo de 8 caracteres alfanuméricos, entre ellos un carácter especial, una mayúscula, una minúscula y números.');
                activateButton();
            }
        }
    }
    //Validacion del input de la confirmacion de la contrasena
    function validateInputPassTwo(e) {
        msg = 'Por favor, introduzca el mismo valor de la contraseña nuevamente';
        psw = pass.value;
        passtwo = passrepeat.value;
        if (passtwo === 0) {
            passrepeatActivate = false;
            passrepeat.classList.add('border', 'border-danger');
            passrepeat.classList.remove('border', 'border-success');
            showErrorPswTwo(msg);
            activateButton();
        } else {
            passrepeat.classList.add('border', 'border-danger');
            passrepeat.classList.remove('border', 'border-success');
            if (psw === passtwo) {
                if (pasW.test(e.target.value)) {
                    passrepeatActivate = true;
                    activateButton();
                    passrepeat.classList.remove('border-danger');
                    passrepeat.classList.add('border', 'border-success');
                    cleanError(e);
                } else {
                    passrepeatActivate = false;
                    showErrorPswTwo(msg);
                    activateButton();
                }
            } else {
                passrepeatActivate = false;
                showErrorPswTwo(msg);
                activateButton();
            }
        }
    }

    //Deshabilita el boton de continuar si el formulario no esta lleno
    function iniciarRegister() {
        btnEnviar.disabled = true;
        btnEnviar.classList.add('btn-red-opacity');
    }

    //Funciones que muestran los errores en la pantalla
    function showErrorName(msg) {
        const mensajeErrorName = document.createElement('p');
        mensajeErrorName.textContent = msg;
        mensajeErrorName.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'text-danger', 'has-error');
        const errorName = document.querySelectorAll('.has-error');
        const nomSelect = document.querySelector('.name-selector');
        if (errorName.length === 0) {
            nomSelect.appendChild(mensajeErrorName);
        }
    }
    function showErrorLastName(msg) {
        const mensajeErrorLast = document.createElement('p');
        mensajeErrorLast.textContent = msg;
        mensajeErrorLast.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'text-danger', 'has-error-last');
        const errorLast = document.querySelectorAll('.has-error-last');
        const lastSelect = document.querySelector('.ape-selector');
        if (errorLast.length === 0) {
            lastSelect.appendChild(mensajeErrorLast);
        }
    }
    
    function showErrorPhone(msg) {
        const mensajeErrorLast = document.createElement('p');
        mensajeErrorLast.textContent = msg;
        mensajeErrorLast.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'text-danger', 'has-error-phone');
        const errorLast = document.querySelectorAll('.has-error-phone');
        const lastSelect = document.querySelector('phone-selector');
        if (errorLast.length === 0) {
            lastSelect.appendChild(mensajeErrorLast);
        }
    }    
    function showErrorMail(msg) {
        const mensajeErrorMail = document.createElement('p');
        mensajeErrorMail.textContent = msg;
        mensajeErrorMail.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-mail');
        const errorMail = document.querySelectorAll('.has-error-mail');
        const mailSelect = document.querySelector('.mail-selector');
        if (errorMail.length === 0) {
            mailSelect.appendChild(mensajeErrorMail);
        }
    }
    function showErrorPsw(msg) {
        const mensajeErrorPsw = document.createElement('p');
        mensajeErrorPsw.textContent = msg;
        mensajeErrorPsw.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-psw');
        const errorPsw = document.querySelectorAll('.has-error-psw');
        const pswSelect = document.querySelector('.pass-selector');
        if (errorPsw.length === 0) {
            pswSelect.appendChild(mensajeErrorPsw);
        }
    }
    function showErrorPswTwo(msg) {
        const mensajeErrorPswTwo = document.createElement('p');
        mensajeErrorPswTwo.textContent = msg;
        mensajeErrorPswTwo.classList.add('f_size', 'label-nom-ape', 'text-left', 'm-top-msg', 'has-error-pswtwo');
        const errorPswTwo = document.querySelectorAll('.has-error-pswtwo');
        const pswTwoSelect = document.querySelector('.pass-selector-two');
        console.log(pswTwoSelect.children);
        if (errorPswTwo.length === 0) {
            pswTwoSelect.appendChild(mensajeErrorPswTwo);
        }
    }
    //Funcion que borra los mensajes de error
    function cleanError(e, n) {
		console.log('n--- ', n);
        if (n === 1) {
            const className = document.querySelector('.name-selector');
            if (e.target.value.length > 0) {
                className.removeChild(className.children[1]);
            }
        }
        if (n === 2) {
            const classApe = document.querySelector('.ape-selector');
            console.log(classApe.children);
            if (e.target.value.length > 0) {
                classApe.removeChild(classApe.children[1]);
            }
        }
        if (n === 3) {
        	console.log('Borrar telefono... ');
            const classApe = document.querySelector('.phone-selector');
            console.log(classApe.children);
            if (e.target.value.length > 0) {
                classApe.removeChild(classApe.children[1]);
            }
        }        
        if (e.target.classList.contains('idmail')) {
            const classMail = document.querySelector('.mail-selector');
            if (e.target.value.length > 0) {
                classMail.removeChild(classMail.children[2]);
            }
        }
        if (e.target.classList.contains('idpas')) {
            const classPsw = document.querySelector('.pass-selector');
            if (e.target.value.length > 0) {
                classPsw.removeChild(classPsw.children[2]);
            }

        }
        if (e.target.classList.contains('idpastwo')) {
            const classPswTwo = document.querySelector('.pass-selector-two');
            if (e.target.value.length > 0) {
                classPswTwo.removeChild(classPswTwo.children[2]);
            }
        }
    }

    //Habilita el boton una vez pase las validaciones

    function activateButton() {
        if (nameActive === true && lastnameActive === true && mailActivate === true && passActivate === true && passrepeatActivate === true) {
            btnEnviar.disabled = false;
            btnEnviar.classList.remove('btn-red-opacity');
        } else {
            iniciarRegister();
        }

    }

</script>