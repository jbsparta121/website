<?php 
include("../../bd.php");

if(isset($_GET['txtId'])) {
    $txtId = (isset($_GET['txtId']))?$_GET['txtId']:"";

    $sentencia = $conexion->prepare("SELECT imagen FROM tbl_portafolio WHERE id=:id");
    $sentencia->bindParam(":id",$txtId);
    $sentencia->execute();
    $registro_imagen = $sentencia->fetch(PDO::FETCH_LAZY);

    if(isset($registro_imagen['imagen'])) {
        if(file_exists("../../../assets/img/portfolio/".$registro_imagen['imagen'])) {
            unlink("../../../assets/img/portfolio/".$registro_imagen['imagen']);
        } 
    }

    $sentencia = $conexion->prepare("DELETE FROM `tbl_portafolio` WHERE id=:id;");
    $sentencia->bindParam(":id",$txtId);
    $sentencia->execute();
}

$sentencia = $conexion->prepare("SELECT * FROM tbl_portafolio");
$sentencia->execute();
$lista_portafolio = $sentencia->fetchAll(PDO::FETCH_ASSOC);
include("../../templates/header.php"); 
?>

<div class="card">
    <div class="card-header"> <a name="" id="" class="btn btn-primary" href="crear.php" role="button">Agregar registro</a></div>
    <div class="card-body">
        <div
            class="table-responsive-sm"
        >
            <table
                class="table table"
            >
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Titulo</th>
                        <th scope="col">Imagen</th>
                        <th scope="col">Descripción</th>
                        <th scope="col">Cliente&Cliente</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($lista_portafolio as $registros) { ?>
                        <tr class="">
                            <td scope="row"><?php echo $registros['id']; ?></td>
                            <td scope="row">
                                <h6><?php echo $registros['titulo']; ?></h6>
                                <?php echo $registros['subtitulo']; ?> <br/>
                                <?php echo $registros['url']; ?>
                            </td>
                            <td scope="row">
                           <img width="100" src="../../../assets/img/portfolio/<?php echo $registros['imagen']; ?>" />    
                            </td>
                            <td scope="row"><?php echo $registros['descripcion']; ?></td>
                            <td scope="row">
                                - <?php echo $registros['categoria']; ?> <br/>
                                - <?php echo $registros['cliente']; ?>
                            </td>
                            <td scope="row">
                                <a name="" id="" class="btn btn-info" href="editar.php?txtId=<?php echo $registros['id']; ?>" role="button">Editar</a> 
                                |
                                <a name="" id="" class="btn btn-danger" href="index.php?txtId=<?php echo $registros['id']; ?>" role="button">Eliminar</a>    
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
    <div class="card-footer text-muted"></div>
</div>


<?php include("../../templates/footer.php") ?>