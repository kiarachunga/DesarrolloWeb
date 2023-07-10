<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Iniciar Sesion</title>
    <style>
      body {
          background:radial-gradient(circle at center, #c0c8ff, #ffffff);
      }  
      </style>
</head>
<body>
    
     <div class="container d-flex justify-content-center align-items-center min-vh-100"><!--Contenedor de todo-->
       <div class="row border rounded-5 p-3 bg-white shadow box-area"><!--Contenedor del login-->
       <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box" style="background: #b8c1f9;"><!--Izquierda de la caja-->
           <div class="featured-image mb-3">
            <img src="imag/Captura3-removebg-preview.png" class="img-fluid" style="width: 250px;">
           </div>
           
           
       </div> 
       <div class="col-md-6 right-box" >    <!--Derecha de la caja-->
          <div class="row align-items-center">
                <div class="header-text mb-4">
                     <h2>Iniciar Sesion</h2>
                     <p>Todos amamos y cuidamos los libros</p>
                </div>
                <form action="logica/loguear.php" method="POST">
                    <div class="input-group mb-3" >
                    <input type="text"  name="usuario" class="form-control form-control-lg bg-light fs-6" placeholder="Email address">
                </div>
                <div class="input-group mb-3">
                    <input type="password" name="clave" class="form-control form-control-lg bg-light fs-6" placeholder="Password">
                </div>
                <div class="input-group mb-3">
                    <button class="btn btn-lg btn-primary w-100 fs-6">Login</button>
                </div>
                <div class="d-grid gap-2 col-4 mx-auto ">
                    <a href="registrarse.php"><button class="btn btn-secondary" type="button">Registrarse</button></a>
                   </div>
                </form>
                
                  
          </div>
       </div> 
      </div>
    </div>
</body>
</html>