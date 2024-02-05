// Función para realizar una solicitud GET y actualizar el dato en la página
function obtenerDato() {
    axios.get('https://app.alanestevez.tech/IOT/back-end/getCommand.php')
    .then(function(response) {
        // Actualizar el contenido en la página con el dato recibido
        console.log(response.data)
        document.getElementById('datoSpan').innerText = response.data;
    })
    .catch(function(error) {
        console.error('Error al obtener el dato:', error);
    });
}

// Llamar a la función inicialmente
obtenerDato();

// Actualizar cada 2 segundos
setInterval(obtenerDato, 10000);
