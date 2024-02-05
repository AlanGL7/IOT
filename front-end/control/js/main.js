var estado = "";
document.getElementById('avanzar').addEventListener('click', function() {
    console.log('Botón Avanzar presionado');
    //var imagen = document.getElementById("avanzar");
    reiniciarImagen();
    document.getElementById("avanzar").src = "img/avanzarON.png";
    enviarValorAlServidor('AVAN');
    estado = "AVAN";
});

document.getElementById('retroceder').addEventListener('click', function() {
    console.log('Botón Retroceder presionado');
    reiniciarImagen();
    document.getElementById("retroceder").src = "img/retrocederON.png";
    enviarValorAlServidor('RETR');
    estado = "RETR";
});

document.getElementById('detener').addEventListener('click', function() {
    console.log('Botón Detener presionado');
    reiniciarImagen();
    document.getElementById("detener").src = "img/stopON.png";
    enviarValorAlServidor('PARA');
    estado = "PARA";
});

document.getElementById('izquierda').addEventListener('click', function() {
    console.log('Botón Izquierda presionado');
    reiniciarImagen();
    document.getElementById("izquierda").src = "img/izquierdaON.png";
    enviarValorAlServidor('AVIZ');
    estado = "AVIZ";
});

document.getElementById('derecha').addEventListener('click', function() {
    console.log('Botón Derecha presionado');
    reiniciarImagen();
    document.getElementById("derecha").src = "img/derechaON.png";
    enviarValorAlServidor('AVDE');
    estado = "AVDER";
});

document.getElementById('demo').addEventListener('click', function() {
    console.log('Botón Demo presionado');
    reiniciarImagen();
    document.getElementById("demo").src = "img/demoON.png";
    enviarValorAlServidor('DEMO');
    estado = "DEMO";
});

document.getElementById('giro').addEventListener('click', function() {
    console.log('Botón Giro presionado');
    reiniciarImagen();
    //document.getElementById("giro").src = "img/demoON.png";
    enviarValorAlServidor('GIRO');
    estado = "GIRO";
});

function reiniciarImagen(){
    document.getElementById("avanzar").src = "img/avanzar.png";
    document.getElementById("retroceder").src = "img/retroceder.png";
    document.getElementById("detener").src = "img/stop.png";
    document.getElementById("izquierda").src = "img/izquierda.png";
    document.getElementById("derecha").src = "img/derecha.png";
    document.getElementById("demo").src = "img/robot.png";
    document.getElementById('advertencia').src ="img/advertenciaOFF.png";
}


function obtenerDato() {
    axios.get('https://app.alanestevez.tech/IOT/back-end/getCommand.php')
    .then(function(response) {
        // Actualizar el contenido en la página con el dato recibido
        console.log(response.data)
        controlImagen(response.data);
        //document.getElementById('datoSpan').innerText = response.data;
    })
    .catch(function(error) {
        console.error('Error al obtener el dato:', error);
    });
}

function controlImagen(info){
    if(info != estado){
        reiniciarImagen();
        estado = info;
        switch(estado){
                case "AVAN":
                document.getElementById("avanzar").src = "img/avanzarON.png";
                break;
                case "PARA":
                document.getElementById("detener").src = "img/stopON.png";
                break;
                case "AVDE":
                document.getElementById("derecha").src = "img/derechaON.png";
                break;
                case "AVIZ":
                document.getElementById("izquierda").src = "img/izquierdaON.png";
                break;
                case "RETR":
                document.getElementById("retroceder").src = "img/retrocederON.png";
                break;
                case "DEMO":
                document.getElementById("demo").src = "img/demoON.png";
                break;
                case "CHOQ":
                //var img = document.getElementById("containerIMG");
                //img.style.display = 'block'; 
                /*
                var imagen = document.getElementById('advertencia');
                imagen.style.display = "show";
                */
                
                document.getElementById('advertencia').src ="img/advertencia.png";
                console.log("CHOCO");
                break;
        }


        
        /*console.log("HOLA");*/
    }
}

// Establecer un intervalo para ejecutar la función cada 5 segundos (ajusta según tus necesidades)
setInterval(obtenerDato, 5000);


function enviarValorAlServidor(valor) {
    // Utilizando Axios para enviar una solicitud GET al servidor
    axios.get('https://app.alanestevez.tech/IOT/back-end/setCommand.php?setcommand=', {
        params: {
            setcommand: valor
        }
    })
    .then(function(response) {
        // Manejar la respuesta del servidor si es necesario
        console.log('Respuesta del servidor:', response.data);
    })
    .catch(function(error) {
        // Manejar errores de la solicitud
        console.error('Error al enviar la solicitud al servidor:', error);
    });
}
