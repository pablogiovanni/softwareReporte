# softwareReporte; VERSION DE CRYSTALREPORTS = 13.0.21.2533
Módulo integrado de reportes

INSTRUCCIONES PARA INTEGRAR EL MÓDULO

  -Crear un proyecto nuevo de Visual Studio 2015 de C#
  
  -Añadir una referencia la cual será la DLL llamada: dllReporte, cuya ubicación es: (dllconexion\dllconexion\bin\Debug\dllconexion)
    Añadir una referencia la cual será la DLL llamada: dllReporte, cuya ubicación es: (dllconexion\dllconexion\bin\Debug\AdministradorDeReportes)
    
  - A continuación, las líneas de código que hacen llamada a la reportería con los parámetros a la base de datos:
  
  1- PARA LA ADMINISTRACIÓN DE LOS REPORTES
  
    AdministradorDeReportes.Objetos.dbConexion.dbName = "DATABASE";
              AdministradorDeReportes.Objetos.dbConexion.dbServer = "SERVER IP";
              AdministradorDeReportes.Objetos.dbConexion.dbUser = "USER";
              AdministradorDeReportes.Objetos.dbConexion.dbPass = "PASSWORD";
              Mantenimiento rMante = new Mantenimiento();
              rMante.Show();
              
   
   2- PARA LISTAR Y EJECUTAR LOS REPORTES PREDETERMINADOS DE LA APLICACION
      VISTA PREVIA = 1 | IMPRIMIR REPORTE = 0
   
      dllconexion.gReport.establecerParametrosDB("SERVER IP", "USER", "DATABASE", "PASSWORD");
                dllconexion.seleccionPath rLista = new dllconexion.seleccionPath(CODIGO DE APLICACION(INT), CODIGO DE VISTA(INT));
                rLista.Show();
