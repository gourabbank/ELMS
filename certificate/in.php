<?php
    if(!isset($_SESSION))
    { 
    session_start(); 
    }
    include_once('dbConnection.php');
    if(isset($_SESSION['is_login']))
    {
        $stuLogEmail = $_SESSION['stuLogEmail'];
    } 
?>
<html>
<head>
    <style>
        body, html {
            margin: 0;
            padding: 0;
        }
        body {
            color: black;
            display: table;
            font-family: Georgia, serif;
            font-size: 24px;
            text-align: center;
        }
        .container {
            border: 20px solid tan;
            width: 750px;
            height: 563px;
            
            vertical-align: middle;
        }
        .logo {
            color: tan;
        }

        .marquee {
            color: tan;
            font-size: 48px;
            margin: 20px;
        }
        .assignment {
            margin: 20px;
        }
        .person {
            border-bottom: 2px solid black;
            font-size: 32px;
            font-style: italic;
            margin: 20px auto;
            width: 400px;
        }
        .reason {
            margin: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">
            ELMS-Learn And Implement
        </div>

        <div class="marquee">
            Certificate of Completion
        </div>

        <div class="assignment">
            This certificate is presented to
        </div>

        <div class="person">
        <?php
            if(!isset($_SESSION))
            { 
                session_start(); 
            }
            //include('header.php'); 
            include_once('dbConnection.php');
            if(isset($_SESSION['is_login']))
            {
                $stuEmail = $_SESSION['stuLogEmail'];
            } 
            //$stuEmail="gourabbank123@gmail.com";
            $sql = "SELECT * FROM student WHERE stu_email='$stuEmail'";
            $result = $conn->query($sql);
            $row = $result->fetch_assoc();
            $stuName = $row["stu_name"];
            echo $stuName;
        ?>
        </div>

        <div class="reason">

            For Completing<br/>
            <?php 
            if(isset($stuLogEmail))
            {
                $sql = "SELECT co.order_id, c.course_id, c.course_name, c.course_duration, c.course_desc, c.course_img, c.course_author, c.course_original_price, c.course_price FROM courseorder AS co JOIN course AS c ON c.course_id = co.course_id WHERE co.stu_email = '$stuLogEmail'";
                $result = $conn->query($sql);
                $row = $result->fetch_assoc();
                echo $row['course_name'];
            }
            ?>
        </div>
        <img src="veslogo.jpeg" alt="VES LOGO" width="250" height="250">
    </div>
</body>
</html>