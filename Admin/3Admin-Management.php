

<div class="tableContainer">
        <table class="table table-success table-striped">
            <thead>
            <tr>
            <th scope="col"></th>
            <th scope="col">ASSIGNED</th>
            <th scope="col">TIME</th>
            <th scope="col">ROUTE</th>
            <th scope="col">TYPE</th>
            <th scope="col">C.O.R</th>
            <th scope="col" colspan="2">OPENING TICKET STUB NO.</th>
            <th scope="col">TOTAL</th>
            <th scope="col">DRIVER'S</th>
            <th scope="col">CONDUCTOR'S</th>
            <th scope="col">Date</th>
        </tr>
        <tr>
            <th scope="col">#</th>
            <th scope="col">BUS NO.</th>
            <th scope="col">DEPARTURED</th>
            <th scope="col">DESTINATION</th>
            <th scope="col">SERVICE</th>
            <th scope="col">NUMBER</th>
            <th scope="col">PASS.TICKET</th>
            <th scope="col">BAGG.TICKET</th>
            <th scope="col">PASSENGER</th>
            <th scope="col">NAME</th>
            <th scope="col">NAME</th>
            <th scope="col">Date</th>
            <th scope="col"colspan="2">OPERATION</th>
            
        </tr>
            </thead>
                <tbody>
                    <?php 
                        $sql = "SELECT *FROM management_tb";
                        $result = mysqli_query($conn,$sql);

                        if($result)
                        {
                            while($row=mysqli_fetch_assoc($result))
                            {
                                $id = $row['id'];
                                $bus_no = $row['bus_no'];
                                $time_dept = $row['time_dept'];
                                $route = $row['route_destination'];
                                $unit = $row['unit'];
                                $cor_number = $row['cor_number'];
                                $pass_ticket = $row['pass_ticket'];
                                $bagg_ticket = $row['bagg_ticket'];
                                $passenger = $row['passenger'];
                                $d_name = $row['drivers_name'];
                                $c_name = $row['conductors_name'];

                                echo 
                                '
                                 <tr>
                                 <th scope="row">'.$id.'</th>
                                 <td>'.$bus_no.'</td>
                                 <td>'.$time_dept.'</td>
                                 <td>'.$route.'</td>
                                 <td>'.$unit.'</td>
                                 <td>'.$cor_number.'</td>
                                 <td>'.$pass_ticket.'</td>
                                 <td>'.$bagg_ticket.'</td>
                                 <td>'.$passenger.'</td>
                                 <td>'.$d_name.'</td>
                                 <td>'.$c_name.'</td>
                                 <td><button type="button" class="btn btn-success"><a href="3release.php?releaseid='.$id.'">Release</a></button></td>
                                 <td><button type="button" class="btn btn-primary"><a href="">Update</a></button></td>
                                 <td><button type="button" class="btn btn-danger"><a href="3delete.php?deleteid='.$id.'">Delete</a></button></td>

                                 </tr>
                                 
                                ';
 
                            }
                        }
                    ?>
                </tbody>
        </table>
</div> 
</body>
</html>