const btnBuscar = document.getElementById('btnBuscar');
const inputPokemon = document.getElementById('nombrePokemon');
const divResultado = document.getElementById('resultado');

btnBuscar.addEventListener('click', async () => {
    const query = inputPokemon.value.trim().toLowerCase();
    
    if (!query) {
        divResultado.innerHTML = '<p class="error">Por favor, escribe el nombre o número de un pokémon.</p>';
        return;
    }

    divResultado.innerHTML = '<p>Cargando...</p>';

    try {
        const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${query}`);

        if (!response.ok) {
            throw new Error('El pokémon no existe o hubo un error en la búsqueda.');
        }

        const data = await response.json();

        // Conversión: peso en hectogramos a kg (/10) y altura en decímetros a metros (/10)
        const pesoKg = data.weight / 10;
        const alturaMetros = data.height / 10;
        const tipos = data.types.map(t => t.type.name).join(', ');

        divResultado.innerHTML = `
            <h2>${data.name.toUpperCase()}</h2>
            <img src="${data.sprites.front_default}" alt="${data.name}">
            <p><strong>Tipos:</strong> ${tipos}</p>
            <p><strong>Peso:</strong> ${pesoKg} kg</p>
            <p><strong>Altura:</strong> ${alturaMetros} m</p>
        `;
    } catch (error) {
        divResultado.innerHTML = `<p class="error">${error.message}</p>`;
    }
});