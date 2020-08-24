<?php
if (isset($_REQUEST['it']) and $_REQUEST['ti'] != '' and $_REQUEST['ti'] != null and
isset($_REQUEST['id']) and $_REQUEST['id'] != '' and $_REQUEST['id'] != null and
isset($_POST['pais_nacimiento']) and $_REQUEST['pais_nacimiento'] != '' and $_REQUEST['pais_nacimiento'] != null and
isset($_REQUEST['fecha_nacimiento']) and $_REQUEST['fecha_nacimiento'] != '' and $_REQUEST['fecha_nacimiento'] != null and
isset($_REQUEST['apellidos']) and $_REQUEST['apellidos'] != '' and $_REQUEST['apellidos'] != null and
isset($_REQUEST['name']) and $_REQUEST['name'] != '' and $_REQUEST['name'] != null and
isset($_REQUEST['estado_civil']) and $_REQUEST['estado_civil'] != '' and $_REQUEST['estado_civil'] != null and
isset($_REQUEST['zona_recidencial']) and $_REQUEST['zona_recidencial'] != '' and $_REQUEST['zona_recidencial'] != null and
isset($_REQUEST['institución_educativa']) and $_REQUEST['institución_educativa'] != '' and $_REQUEST['institución_educativa'] != null and
isset($_REQUEST['educacion_padres']) and $_REQUEST['educacion_padres'] != '' and $_REQUEST['educacion_padres'] != null and
isset($_REQUEST['actividad_economica_padres']) and $_REQUEST['actividad_economica_padres'] != '' and $_REQUEST['actividad_economica_padres'] != null and
isset($_REQUEST['tipo_vivienda']) and $_REQUEST['tipo_vivienda'] != '' and $_REQUEST['tipo_vivienda'] != null and
isset($_REQUEST['calificacion_nivel_educativo']) and $_REQUEST['calificacion_nivel_educativo'] != '' and $_REQUEST['calificacion_nivel_educativo'] != null and
isset($_REQUEST['inivel_ingresos_hogar']) and $_REQUEST['nivel_ingresos_hogar'] != '' and $_REQUEST['nivel_ingresos_hogar'] != null and
isset($_REQUEST['genero']) and $_REQUEST['genero'] != '' and $_REQUEST['genero'] != null and
isset($_REQUEST['programa_formacion']) and $_REQUEST['programa_formacion'] != '' and $_REQUEST['programa_formacion'] != null and
isset($_REQUEST['asignaturas_matriculadas']) and $_REQUEST['asignaturas_matriculadas'] != '' and $_REQUEST['asignaturas_matriculadas'] != null) {

   echo ('campos vacio');
}
else{
    $id                                 = $_REQUEST['id'];
    $ti                                 = $_REQUEST['ti'];
    $pais_nacimiento                    = $_REQUEST['pais_nacimiento'];
    $fecha_nacimiento                   = $_REQUEST['fecha_nacimiento'];
    $apellidos                          = $_REQUEST['apellidos'];
    $name                               = $_REQUEST['name'];
    $estado_civil                       = $_REQUEST['estado_civil'];
    $zona_recidencial                   = $_REQUEST['zona_recidencial'];
    $institucion_educativa              = $_REQUEST['institucion_educativa'];
    $educacion_padres                   = $_REQUEST['educacion_padres'];
    $actividad_economica_padres         = $_REQUEST['actividad_economica_padres'];
    $tipo_vivienda                      = $_REQUEST['tipo_vivienda'];
    $calificacion_nivel_educativo       = $_REQUEST['calificacion_nivel_educativo'];
    $nivel_ingresos_hogar               = $_REQUEST['nivel_ingresos_hogar'];
    $genero                             = $_REQUEST['genero'];
    $programa_formacion                 = $_REQUEST['programa_formacion'];
    $asignaturas_matriculadas           = $_REQUEST['asignaturas_matriculadas'];
   

    $servername  = "localhost";
    $username    = "root";
    $password    = "";
    $dbname      = "db_udc_mahm";

    try {
        $conn = new PDO("mysql:host=$servername; dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);    
        $stmt = $conn->prepare("UPDATE estudiantes SET ti= ?, pais_nacimiento= ?, fecha_nacimiento= ?, apellidos= ?, name= ?, estado_civil= ?, institucion_educativa= ?, educacion_padres= ?, actividad_economica_padres= ?, tipo_vivienda= ?, calificacion_nivel_educativo= ?, nivel_ingresos_hogar= ?, genero= ?, asignaturas_matriculadas= ?, programa_formacion= ?, zona_recidencial= ? WHERE id= ?"); 
        $stmt->execute(array($ti, $pais_nacimiento, $fecha_nacimiento, $apellidos, $name, $estado_civil, $institucion_educativa, $educacion_padres, $actividad_economica_padres, $tipo_vivienda, $calificacion_nivel_educativo, $nivel_ingresos_hogar, $genero, $asignaturas_matriculadas, $programa_formacion, $zona_recidencial, $id));                    
        header('location: index.php');
    } catch(PDOExection $e) {
        echo $e->getMessage();
    } 
    
}    