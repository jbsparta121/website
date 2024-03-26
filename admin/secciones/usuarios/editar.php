<?php 
include("../../bd.php");

if(isset($_GET['txtId'])) {
    $txtId = (isset($_GET['txtId']))?$_GET['txtId']:"";
    $sentencia = $conexion->prepare("SELECT * FROM tbl_usuarios WHERE id=:id");
    $sentencia->bindParam(":id",$txtId);
    $sentencia->execute();
    $registro = $sentencia->fetch(PDO::FETCH_LAZY);

    $usuario = $registro['usuario'];
    $password = $registro['password'];
    $correo = $registro['correo'];
}

if($_POST) {

$txtId = (isset($_POST['txtId']))?$_POST['txtId']:"";
$usuario = (isset($_POST['usuario']))?$_POST['usuario']:"";
$password = (isset($_POST['password']))?$_POST['password']:"";
$correo = (isset($_POST['correo']))?$_POST['correo']:"";
$sentencia = $conexion->prepare("UPDATE tbl_usuarios SET usuario=:usuario, password=:password, correo=:correo WHERE id=:id;");

$sentencia->bindParam(":usuario",$usuario);
$sentencia->bindParam(":password",$password);
$sentencia->bindParam(":correo",$correo);
$sentencia->bindParam(":id",$txtId);
$sentencia->execute();
$mensaje = "Registro modificado con éxito.";
header("Location:index.php?mensaje=".$mensaje);
}

include("../../templates/header.php"); 
?>

<div class="card">
    <div class="card-header">Usuario</div>
    <div class="card-body">
        <form action="" method="post">

            <div class="mb-3">
                <label for="txtId" class="form-label">ID:</label>
                <input
                    readonly
                    value="<?php echo $txtId; ?>"
                    type="text"
                    class="form-control"
                    name="txtId"
                    id="txtId"
                    aria-describedby="helpId"
                    placeholder="ID"
                />
            </div>

            <div class="mb-3">
                <label for="usuario" class="form-label">Nombre del usuario:</label>
                <input
                    value="<?php echo $usuario; ?>"
                    type="text"
                    class="form-control"
                    name="usuario"
                    id="usuario"
                    aria-describedby="helpId"
                    placeholder="Nombre del usuario"
                />
            </div>

            <div class="mb-6">
                <label for="password" class="form-label">Password:</label>
                <input
                    value="<?php echo $password; ?>"
                    type="password"
                    class="form-control"
                    name="password"
                    id="password"
                    aria-describedby="helpId"
                    placeholder="Password"
                />
                <label for="ver-password" class="form-label">Ver Contraseña</label>
                <input type="checkbox" name="ver-password" id="ver-password" onchange="verPassword()">
            </div>

            <div class="mb-3">
                <label for="correo" class="form-label">Correo:</label>
                <input
                    value="<?php echo $correo ?>"
                    type="email"
                    class="form-control"
                    name="correo"
                    id="correo"
                    aria-describedby="helpId"
                    placeholder="Correo"
                />
            </div>

            <button
                type="submit"
                class="btn btn-success"
                >
                Agregar
            </button>
            
            <a
                name=""
                id=""
                class="btn btn-primary"
                href="index.php"
                role="button"
                >Cancelar</a
            >
            

        </form>
    </div>
    <div class="card-footer text-muted"></div>
</div>

<script>
    function verPassword() {
        let passwordInput = document.getElementById('password');
        let checkPassInput = document.getElementById('ver-password');
        passwordInput.type = checkPassInput.checked ? 'text' : 'password';
    }
</script>

<?php include("../../templates/footer.php") ?>