
<div class="tableContainer">
    <button type="button" class="btn btn-primary"><a style="color: white; text-decoration:none;" href="6add.php">Add</a></button>
        <table class="table table-success table-striped">
            <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">BUS NO.</th>
            <th scope="col">SERVICE</th>
            <th scope="col">DEPARTURED</th>
            <th scope="col">Route Destination</th>
            <th scope="col">Operation</th>
            
        </tr>
            </thead>
                <tbody>
                    <?php 
                        $sql = "SELECT *FROM arrival_tb";

                        $result = mysqli_query($conn,$sql);

                       while($row = mysqli_fetch_assoc($result)) {


                        $id = $row['id'];
                        $bus_no = $row['bus_no'];
                        $unit = $row['unit'];
                        $departure_time = $row['departured_time'];
                        $route = $row['route_destination'];

                        echo '
                        <tr>
                    <th scope="row">'.$id.'</th>
                    <td>'.$bus_no.'</td>
                    <td>'.$unit.'</td>
                    <td>'.$departure_time.'</td>
                    <td>'.$route.'</td>
                    <td><button type="button" class="btn btn-success"><a href="6edit.php?editid='.$id.'">Edit</a></button>
                    <button type="button" class="btn btn-danger"><a href="6delete.php?deleteid='.$id.'">Delete</a></button>
                    </td>
                    </tr>
                        ';

                       }
                    ?>
                    
                
                </tbody>
        </table>
</div> 
</body>
</html>