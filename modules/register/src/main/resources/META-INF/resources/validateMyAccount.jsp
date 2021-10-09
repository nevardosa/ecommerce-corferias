<script>
    /*
        Constantes de los inputs
    */
    const deparment = document.querySelector('.depto');
    const city = document.querySelector('.city');
    const neighborhood = document.querySelector('.neighborhood');
    const direction = document.querySelector('.address');
    const housename = document.querySelector('.house-name');

    //Interfaces
    const formulario = document.querySelector('.form-modal');
    const contenDir = document.querySelector('.input-address');


    //Expresion regular para validar solo texto
    const inputtext = /^[a-zA-Z]+[ a-zA-Z]+$/;

    //Clases
    class Address {
        constructor() {
            this.addres = [];
        }
        agregarAddres(addres) {
            this.addres = [...this.addres, addres];
            console.log(this.addres);
        }
    }




    class UserInterface {

    }

    const userInterface = new UserInterface();
    const adminAddress = new Address();

    //Registro de eventos
    eventListener();
    function eventListener() {
        deparment.addEventListener('blur', inputData);
        city.addEventListener('blur', inputData);
        neighborhood.addEventListener('blur', inputData);
        direction.addEventListener('blur', inputData);
        housename.addEventListener('blur', inputData);

        formulario.addEventListener('submit', addDataAddress);
    }

    //Objeto de direcciones
    const addDirObj = {
        deptoselect: '',
        city: '',
        neighborhood: '',
        address: '',
        livingplace: ''
    }

    //Agrega los datos al objeto de direcciones
    function inputData(e) {
        addDirObj[e.target.name] = e.target.value;
        console.log(addDirObj);
    }



    //Valida y agrega una nueva direccion a clase de Address
    function addDataAddress(e) {
        e.preventDefault();
        console.log('Guardando...');

        const { departm, city, neighborhood, address, livingplace } = addDirObj;

        if (departm === '' || city === '' || neighborhood === '' || address === '' || livingplace === '') {
           // userInterface.mostrarMsgError('Todos los campos son obligatorio');
            console.log('Todos los campos son obligatorios');
            return;
        }

        //Generar un id unico
        addDirObj.id = Date.now();

        adminAddress.agregarAddres(addDirObj);
    }
</script>