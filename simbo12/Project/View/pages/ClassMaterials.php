<?php
session_start();
if (empty($_SESSION["Email"])) {
    header("Location: ./Login.php"); // Redirecting To Login Page
}
if(isset($_POST['submit'])) {
    $target = 'upload/';
    $target_file = $target . basename($_FILES['fileToUpload']['name']);
    if(move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $target_file)) {
        echo "The file has uploaded";
    }
    else{
        echo "The file has error";
    }
}

?>
<!DOCTYPE html>
<html>

<head>
    <title>Registration Approval</title>
</head>

<body>
    <?php
    include('../layout/Header.php');
    ?>
     
    <fieldset>
        <legend>Class Materials</legend>

        <?php
        include "../../model/DatabaseConnection.php";
        $connection = new DatabaseConnection();
        $conobj = $connection->OpenCon();

        $materials = $connection->ClassMaterials($conobj, "class_materials");

        if ($materials->num_rows > 0) { ?>
            <form method="POST" enctype="multipart/form-data">
        <input type="file" name="fileToUpload"><input />
        <input type="submit" value="Submit" name="submit" />
    </form>
        <?php
        }

        ?>
    </fieldset>
    <br>
    <?php
    include('../layout/Footer.php');
    ?>
   
</body>

</html>