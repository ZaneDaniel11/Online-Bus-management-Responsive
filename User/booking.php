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
    <link rel="stylesheet" href="CSS/STYLE-booking.css">

</head>
<?php
include 'header.html'
?>
<body style=background-color:red;>
    <div class="bodypic">
            <img src="imgaes/booking.jpg">
    </div>

    <div class="section2">
        <p class="p1">BOOKING</p>
        <p class="p2">Book now and stay inform from our update!</p>
    </div>

    
 <div class="bookingContainer"style="background-color: green;">

        <form method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="unit">Unit:</label>
            <select id="unit" name="unit" required>
                <option value="ALC">ALC</option>
                <option value="DLX">DLX</option>
            </select>

            <label for="gender">Route Destination:</label>
            <select id="route" name="route" required>
                <option value="cebu">CEBU</option>
                <option value="danao">DANAO</option>
                <option value="daan bantayan">DAAN BANTAYAN</option>
            </select>

            <!-- SUBMIT BUTTON HERE -->
            <button  type="submit" name="submit" class="submitBtn"style="background-color: black">Submit</button>
        </form>
 </div>
    <!-- Bootstrap Modal -->
 <div class="modal" tabindex="-1" role="dialog" id="bookingSuccessModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Booking Successful</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Your booking has been successful!</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="background-color:#D53C31 ;
    color: white ;">Close</button>
                </div>
            </div>
        </div>
    </div>

</body>
</html>

<script> 
<?php
    include 'Table/TABLE-Connection.php';

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