<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Simple Web App</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #6a11cb, #2575fc);
      color: white;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      flex-direction: column;
    }

    h1 {
      margin-bottom: 20px;
    }

    input {
      padding: 10px;
      font-size: 1em;
      border-radius: 5px;
      border: none;
      margin-right: 10px;
    }

    button {
      padding: 10px 15px;
      font-size: 1em;
      border-radius: 5px;
      border: none;
      background-color: #ff66cc;
      color: white;
      cursor: pointer;
      transition: 0.3s;
    }

    button:hover {
      background-color: #ff33aa;
    }

    #greeting {
      margin-top: 20px;
      font-size: 1.5em;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <h1>Welcome to My Simple Web App</h1>

  <div>
    <input type="text" id="nameInput" placeholder="Enter your name" />
    <button onclick="sayHello()">Greet Me!</button>
  </div>

  <div id="greeting"></div>

  <script>
    function sayHello() {
      const name = document.getElementById('nameInput').value.trim();
      const greetingDiv = document.getElementById('greeting');

      if(name) {
        greetingDiv.textContent = `Hello, ${name}! 👋`;
      } else {
        greetingDiv.textContent = `Please enter your name.`;
      }
    }
  </script>

</body>
</html>
