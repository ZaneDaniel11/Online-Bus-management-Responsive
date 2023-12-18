<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Bus Management System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text&family=Inter:wght@500;600;
                700&family=Kaushan+Script&family=Montserrat&family=Roboto+Slab&family=Roboto:wght@300&display=swap" 
                rel="stylesheet"> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="CSS/STYLE-lost.css">

</head>

<body>
<?php
include 'header.html'
?>
    <div class="bodypic">
            <img src="imgaes/booking.jpg">
    </div>

    <div class="section2">
        <p class="p1">LOST ITEMS</p>
        <p class="p2">Lost items information</p>
    </div>

    <div class="tableContainer">
        <?php 
            include 'Table/Table-lostItem.php';
        ?>
    </div>
    
<script> 
    <?php
        include 'Table/Connection.php';

        if(isset($_POST['submit']))
        {
            $email = $_POST['email'];
            $unit = $_POST['unit'];
            $route = $_POST['route'];

            $query = "INSERT INTO book_tb (email,unit,route_destination) VALUES ('$email','$unit','$route')";

            $result = mysqli_query($conn,$query);

            if($result)
            {
                echo ' 
                $(document).ready(function(){
                    $("#bookingSuccessModal").modal("show");
                });
            ';
            }
            else
            {
                echo 'idiot';
            }
        }
    ?>


</script>
</body>
</html>

