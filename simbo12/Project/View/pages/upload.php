<?php
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="POST" enctype="multipart/form-data">
        <input type="file" name="fileToUpload"><input />
        <input type="submit" value="Submit" name="submit" />
    </form>
</body>
</html>