<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.SociosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Socios"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Socios</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- CSS only -->
         <link rel="stylesheet" href="vistas/css/socios.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
            <!-- JavaScript Bundle with Popper -->
      
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
     <style>
      .banner-image {
        
    background-image: url("vistas/css/img/gym.jpg");
    background-size: cover;

        
      }
    </style>
    </head> 
    
    
    <body>
        
          <!-- Navbar  -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-4">
      <div class="container">
        <a class="navbar-brand" style="font-size:40px; text-shadow:black 3px 10px;" href="#"> CHANGE NOW  </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
          <div class="mx-auto"></div>
          <ul class="navbar-nav navbar-expand-lg" style="font-size:25px; text-shadow:black 3px 3px;">
            <li class="nav-item ">
              <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Blog</a>
            </li>
          
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
           <!-- Banner Image  -->
    <div class="banner-image justify-content-center align-items-center">
    
           <div>
         <h1 id="titulo" >Listado de Los Socios del Gym</h1>
        </div>
        
    </div>
     <div class="alert alert-light text-center" role="alert">
           <span> Click en agregar socio para añadir socio nuevo.</span>
       </div>

      <div class="container">
            
            <div class="row">
            
           
            <table class="table table-success table-striped">
            <thead>
            <tr>
                  <th scope="col">Id</th>
                  <th scope="col">Nombre</th>
                  <th scope="col">Apellido</th>
                  <th scope="col">Direccion</th>
                  <th scope="col">Localidad</th>
                  <th scope="col">Fecha Nac</th>
                  <th scope="col">Mail</th>
                  <th scope="col">Telefono</th>
                  <th scope="col">Eliminar</th>
                  <th scope="col">Modificar</th>
            </tr>
            </thead>
<%     
 
          List<Socios> resultado=null;
          SociosDAO s1=new SociosDAO();
          resultado=s1.listarSocios();
          
         for(int x=0;x<resultado.size();x++)
         {
            String ruta="SociosController?accion=modificar&id="+resultado.get(x).getId();
            String rutaE="SociosController?accion=eliminar&id="+resultado.get(x).getId();
 

%>

                <tr>
                   <td><%=resultado.get(x).getId()%></td>
                   <td><%=resultado.get(x).getNombre()%></td>
                   <td><%=resultado.get(x).getApellido()%></td>
                   <td><%=resultado.get(x).getDireccion()%></td>
                   <td><%=resultado.get(x).getLocalidad()%></td>
                   <td><%=resultado.get(x).getFnac()%></td>
                   <td><%=resultado.get(x).getMail()%></td>
                   <td><%=resultado.get(x).getTelefono()%></td>
                   <td class="text-center"> <a href=<%=rutaE%>> <i class="bi bi-trash"></i> </a></td>
                   <td class="text-center"><a href=<%=ruta%> > <i class="bi bi-pencil-square"></i> </a></td>
                   
                 </tr>
 <% 
         }
 %> 

            </table>
            
            </div>
           
               <a class="btn btn-success col-2 m-2 " href="SociosController?accion=nuevo"> Agregar Socio</a>
            
        </div>
        
      

 <footer class="bg-light text-center text-lg-start">
      <div class="text-center p-3" style="background-color: rgba(0, 26, 56, 0.87);">
        <nav class="navbar navbar-expand-lg bg-color:(0,26,56,0.87);">
          <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarNavAltMarkup">
              <div class="navbar-nav">
                <a class="nav-link active link-light" aria-current="page" href="#">Preguntas frecuentes</a>
                <a class="nav-link link-light" href="#">Contáctanos</a>
                <a class="nav-link link-light" href="#">Prensa</a>
                <a class="nav-link link-light" href="#">Conferencias</a>
                <a class="nav-link link-light" href="#">Términos y Condiciones</a>
                <a class="nav-link link-light" href="#">Privacidad</a>
                <a class="nav-link link-light" href="#">Estudiantes</a>
                
              </div>
            </div>
          </div>
        </nav>
        
        <p class="text-white">@Copyright - Codo A Codo 2022 - 
          <a href="https://github.com/muurix"> Muriel D.</a></p>
      </div>

    </footer>
    </body>

   
</html>
       


        