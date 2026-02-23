<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ashley's Intro</title>
  <style>
    /* Background gradient and full-screen setup */
    body {
      margin: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      overflow: hidden;
    }

    /* Container for animation */
    .intro-container {
      text-align: center;
      color: white;
    }

    /* Name style */
    .name {
      font-size: 5em;
      font-weight: bold;
      letter-spacing: 0.1em;
      animation: glow 2s ease-in-out infinite alternate;
    }

    /* Subtitle / greeting */
    .subtitle {
      font-size: 1.5em;
      margin-top: 20px;
      opacity: 0;
      animation: fadeIn 2s 1s forwards;
    }

    /* Glow animation */
    @keyframes glow {
      0% {
        text-shadow: 0 0 10px #fff, 0 0 20px #ff00ff, 0 0 30px #ff00ff, 0 0 40px #ff00ff;
      }
      50% {
        text-shadow: 0 0 20px #fff, 0 0 30px #ff00ff, 0 0 40px #ff00ff, 0 0 50px #ff00ff;
      }
      100% {
        text-shadow: 0 0 10px #fff, 0 0 20px #ff00ff, 0 0 30px #ff00ff, 0 0 40px #ff00ff;
      }
    }

    /* Fade in for subtitle */
    @keyframes fadeIn {
      to {
        opacity: 1;
      }
    }

    /* Optional animated background circles */
    .circle {
      position: absolute;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.1);
      animation: move 10s linear infinite;
    }

    .circle:nth-child(1) {
      width: 200px;
      height: 200px;
      top: 10%;
      left: 5%;
      animation-duration: 15s;
    }

    .circle:nth-child(2) {
      width: 300px;
      height: 300px;
      top: 50%;
      left: 80%;
      animation-duration: 20s;
    }

    @keyframes move {
      0% { transform: translateY(0) rotate(0deg);}
      50% { transform: translateY(-50px) rotate(180deg);}
      100% { transform: translateY(0) rotate(360deg);}
    }
  </style>
</head>
<body>

  <!-- Animated background circles -->
  <div class="circle"></div>
  <div class="circle"></div>

  <div class="intro-container">
    <div class="name">Ashley</div>
    <div class="subtitle">Welcome to my world!</div>
  </div>

</body>
</html>
