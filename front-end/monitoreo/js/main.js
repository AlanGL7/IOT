async function obtenerRegistros() {
    try {
        const response = await axios.get('https://app.alanestevez.tech/IOT/back-end/getHistorico.php'); // Reemplaza con la URL de tu API
        const cadenaTexto = response.data;

        // Dividir la cadena en palabras utilizando espacios en blanco como separadores
        const palabras = cadenaTexto.split(' ');

        // Obtener la referencia al cuerpo de la tabla
        const tablaBody = document.getElementById('tablaBody');

        // Limpiar el cuerpo de la tabla antes de agregar nuevas filas
        tablaBody.innerHTML = '';

        // Iterar sobre las palabras y agregar filas a la tabla
        palabras.slice(0, 10).forEach((palabra, index) => {
            const fila = document.createElement('tr');

            // Añadir celda de ID
            /*
            const idCelda = document.createElement('td');
            idCelda.textContent = index + 1;
            fila.appendChild(idCelda);*/

            // Añadir celda de nombre (palabra)
            const nombreCelda = document.createElement('td');
            nombreCelda.textContent = palabra;
            fila.appendChild(nombreCelda);

            // Añade más celdas según los campos que desees mostrar

            // Agregar la fila al cuerpo de la tabla
            tablaBody.appendChild(fila);
        });
    } catch (error) {
        console.error('Error al obtener los registros:', error);
    }
}

// Llamar a la función para cargar los registros al cargar la página
obtenerRegistros();

// Llamar a la función cada 5000 milisegundos (5 segundos)
setInterval(obtenerRegistros, 5000);