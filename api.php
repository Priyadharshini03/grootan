<?php
    $myObj = new stdClass();
    $myObj = array();
    $myObjoutput = new stdClass();
    $myObjoutput = array();
    
    //Database connection
    $server = 'localhost'; 
    $user = 'root';
    $pass = '';
    $db = 'grootan';
    $global_current_week_no=0;
    $exLeftNode='';$exRightNode='';
    // Connect to Database 
    date_default_timezone_set("Asia/kolkata");
    $connection = mysqli_connect($server, $user, $pass)  or die ("Could not connect to server ... \n" . mysqli_connect_error ()); 
    mysqli_query($connection,'SET character_set_results=utf8');
    mysqli_query($connection,'SET names=utf8');
    mysqli_query($connection,'SET character_set_client=utf8');
    mysqli_query($connection,'SET character_set_connection=utf8');
    mysqli_query($connection,'SET character_set_results=utf8');
    mysqli_query($connection,'SET collation_connection=utf8_general_ci');
    mysqli_select_db($connection,$db)  or die ("Could not connect to database ... \n" . mysqli_connect_error ());
    

    switch($_POST['fncode'])
    {
        case 'list_users' :

            $sql = "SELECT user_id,name FROM `users`";
            $result = mysqli_query($connection,$sql);
            while($data = mysqli_fetch_array($result))
            {
                $myObj = array (
                    "user_id"=>$data["user_id"],
                    "name"=>$data["name"]
                        
                );
                array_push($myObjoutput,$myObj);
            }
            echo json_encode($myObjoutput);

        break;
        
        case 'add_user' :
            //Registering new user

            $sql="INSERT INTO `users`(`name`, `age`, `first_name`, `last_name`, `dob`, `address_line1`, `address_line2`, `address_line3`, `mobile`) VALUES ('".$_POST["username"]."',".$_POST["age"].",'".$_POST["firstname"]."','".$_POST["lastname"]."','".$_POST["dob"]."','".$_POST["address1"]."','".$_POST["address2"]."','".$_POST["address3"]."',".$_POST["mobile"].")";
            $result = mysqli_query($connection,$sql);
            if(mysqli_affected_rows($connection)>0)
            {
                echo "New user has been registered successfully!!";
            }
            else{
                echo "User registration failed.";
            }

        break;

        case 'get_user_details' :
            $responseString='';
            $sql = "SELECT * FROM `users` where user_id=".$_POST["user_id"];
            $result = mysqli_query($connection,$sql);
            if($data = mysqli_fetch_array($result))
            {
                $responseString = "<p>Name : ".$data["name"]."</p>";
                $responseString .= "<p>Age : ".$data["age"]."</p>";
                $responseString .= "<p>DOB : ".$data["dob"]."</p>";
                $responseString .= "<p>First Name : ".$data["first_name"]."</p>";
                $responseString .= "<p>Last Name : ".$data["last_name"]."</p>";
                $responseString .= "<p>Address Line 1 : ".$data["address_line1"]."</p>";
                $responseString .= "<p>Address Line 2 : ".$data["address_line2"]."</p>";
                $responseString .= "<p>Address Line 3 : ".$data["address_line3"]."</p>";
                $responseString .= "<p>Mobile : ".$data["mobile"]."</p>";
                echo $responseString;
            }
           
        break;
    }

    
    // echo json_encode($myObj);
  
?>