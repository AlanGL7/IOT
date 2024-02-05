document.getElementById('avanzarBtn').addEventListener('click', function() {
    console.log('Botón Avanzar presionado');
    enviarValorAlServidor('AVAN');
});

document.getElementById('retrocederBtn').addEventListener('click', function() {
    console.log('Botón Retroceder presionado');
    enviarValorAlServidor('RETR');
});

document.getElementById('detenerBtn').addEventListener('click', function() {
    console.log('Botón Detener presionado');
    enviarValorAlServidor('PARA');
});

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
