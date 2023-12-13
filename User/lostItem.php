<!DOCTYPE html>


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

