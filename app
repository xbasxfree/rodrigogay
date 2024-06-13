html

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aprende Vocabulario en Inglés</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Aprende Vocabulario en Inglés</h1>
        <div id="word-container">
            <p id="word">Palabra en inglés</p>
            <button id="show-meaning-btn">Mostrar Significado</button>
            <p id="meaning" style="display: none;">Significado en español</p>
        </div>
        <button id="next-word-btn">Siguiente Palabra</button>
    </div>
    <script src="app.js"></script>
</body>
</html>

css

body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f0f0f0;
}

.container {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

button {
    margin: 10px;
    padding: 10px 20px;
    border: none;
    background-color: #007bff;
    color: white;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

#meaning {
    margin-top: 20px;
    font-size: 1.2em;
}

js

document.addEventListener("DOMContentLoaded", () => {
    const words = [
        { english: "Apple", spanish: "Manzana" },
        { english: "House", spanish: "Casa" },
        { english: "Dog", spanish: "Perro" },
        { english: "Bike", spanish: "Bicicleta" },
        { english: "Red", spanish: "Rojo" },
        { english: "Event", spanish: "Evento" },
        { english: "Server", spanish: "Servidor" },
        { english: "Teacher", spanish: "Maestro" },
        { english: "People", spanish: "Personas" },
        { english: "Work", spanish: "Trabajar" },
        { english: "Time", spanish: "Tiempo" },
        { english: "Yes", spanish: "Si" },
        { english: "Life", spanish: "Vida" },
        { english: "Family", spanish: "Familia" },
        { english: "Play", spanish: "Jugar" },
        { english: "Read", spanish: "Leer" },
        { english: "Enjoy", spanish: "Disfrutar" },
        { english: "Stink", spanish: "Apestar" },
        { english: "Think", spanish: "Pensar" },
        { english: "Know", spanish: "Saber" },
        { english: "Realize", spanish: "Darse cuenta" },
        { english: "Executable", spanish: "Ejecutable" },
        { english: "Keyboard", spanish: "Teclado" },
        { english: "Pencil", spanish: "Lapíz" },
        { english: "Box", spanish: "Caja" },
        { english: "One", spanish: "Uno" },
        { english: "Two", spanish: "Dos" },
        { english: "Also", spanish: "Tambien" },
        { english: "If", spanish: "Si (condicional)" },
        { english: "Good", spanish: "Bien" },
        { english: "Bad", spanish: "Mal" },
        { english: "Car", spanish: "Carro" },
        { english: "Awesome", spanish: "Increible" },
        { english: "Snow", spanish: "Nieve" },
        { english: "Summer", spanish: "Verano" },
        { english: "Dead", spanish: "Muerto" },
        { english: "Fentanyl", spanish: "Fentanilo" },
        { english: "Football", spanish: "Fútbol" },
        { english: "High", spanish: "Alto" },
        { english: "Dry", spanish: "Secar" },
        { english: "Driver", spanish: "Conductor" },
        { english: "Ryan", spanish: "Gosling" },
        { english: "Mr White", spanish: "Señor White" },
        { english: "Pink", spanish: "Rosa" },
        { english: "Creature", spanish: "Criatura" },
        { english: "Night", spanish: "Noche" },
        { english: "Handle", spanish: "Aguantar"},    
        { english: "Day", spanish: "Día" },
        { english: "Disarm", spanish: "Desarmar" },
        { english: "Candy", spanish: "Dulces" },
        { english: "Sweet", spanish: "Dulce" },
        { english: "Drive", spanish: "Conducir" },
        { english: "Cook", spanish: "Cocinar" },
        { english: "Milk", spanish: "Leche" },
        { english: "Rent", spanish: "Rentar" },
        { english: "Sword", spanish: "Espada" },
        { english: "Knight", spanish: "Caballero" },
        { english: "Soul", spanish: "Alma" },
        { english: "Beg", spanish: "Rogar" },

        // Agrega más palabras según sea necesario
    ];

    let currentWordIndex = 0;

    const wordElement = document.getElementById("word");
    const meaningElement = document.getElementById("meaning");
    const showMeaningBtn = document.getElementById("show-meaning-btn");
    const nextWordBtn = document.getElementById("next-word-btn");

    function displayWord(index) {
        wordElement.textContent = words[index].english;
        meaningElement.textContent = words[index].spanish;
        meaningElement.style.display = "none";
    }

    showMeaningBtn.addEventListener("click", () => {
        meaningElement.style.display = "block";
    });

    nextWordBtn.addEventListener("click", () => {
        currentWordIndex = (currentWordIndex + 1) % words.length;
        displayWord(currentWordIndex);
    });

    displayWord(currentWordIndex);
});
