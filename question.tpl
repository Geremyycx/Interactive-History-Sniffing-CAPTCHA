<!DOCTYPE html>
<html>
<head>
<center>
  <title>CAPTCHA</title>
  <style>
    a {
        font-size: 24px;
        color: black;
        text-decoration: none;
        pointer-events: none;
        align-items: flex; 
    }
    a:visited {
        color: white;
        text-decoration: none;
    }
    .fakeLetters {
        width: 250px;
        display: flex;
        justify-content: center;
        align-items: center;
        user-select: none;
    }
    .fakeLetters a {
        pointer-events: none; 
        user-select: none;
    }
    div {
        width: 125px;
        height: 125px;
        text-align: center;
    }
    p {
        font-size: 24px;
        top: 0px
    }
  </style>
<center>
</head>
<body>
  <h1>Complete the CAPTCHA</h1>
  <p>Please enter the code shown below:</p>
  <div>
    <div class="fakeLetters">
    <a href="https://www.stthomas.edu/catalog/current/arth/">E</a>
    <a href="https://www.stthomas.edu/catalog/current/chem/">b</a>
    <a href="https://www.stthomas.edu/catalog/current/econ/">T</a>
    <a href="https://www.stthomas.edu/catalog/current/engl/">u</a>
    <a href="https://www.stthomas.edu/catalog/current/math/">c</a>
    <a href="https://www.stthomas.edu/catalog/current/physics/">A</a>
    <p>R</p>
    <p>v</p>
    </div>
  </div>

  <form action="/historyresults" method="POST">
    <input type="text" name="unvisited" required>
    <button type="submit">Submit</button>
  </form>
</body>
</html>
