
        $result = mysqli_query($conn,$sql);
        
        if($result)
        {
            header('location:3Admin-Management.php');
        }
        
    }
?>