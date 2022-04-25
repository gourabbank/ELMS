<?php
// reference the Dompdf namespace
require_once 'dompdf/autoload.inc.php';
use Dompdf\Dompdf;

// instantiate and use the dompdf class
$dompdf = new Dompdf();
$dompdf->loadHtml('<html>
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
            An Organization
        </div>

        <div class="marquee">
            Certificate of Completion
        </div>

        <div class="assignment">
            This certificate is presented to
        </div>

        <div class="person">
            Joe Nathan
        </div>

        <div class="reason">
            For deftly defying the laws of gravity<br/>
            and flying high
        </div>
    </div>
</body>
</html>');

// (Optional) Setup the paper size and orientation
$dompdf->setPaper('A4', 'landscape');
$dompdf->set_option('isHtml5ParserEnabled', true);
// Render the HTML as PDF
$dompdf->render();

// Output the generated PDF to Browser
$dompdf->stream();
?>

<!-- Dibba -->
<?php
    if(!isset($_SESSION))
    { 
        session_start(); 
    }
    include('./stuInclude/header.php'); 
    include_once('../dbConnection.php');

    if(isset($_SESSION['is_login']))
    {
        $stuEmail = $_SESSION['stuLogEmail'];
    } 
    else 
    {
        echo "<script> location.href='../index.php'; </script>";
    }

    $sql = "SELECT * FROM student WHERE stu_email='$stuEmail'";
    $result = $conn->query($sql);
    if($result->num_rows == 1)
    {
        $row = $result->fetch_assoc();
        $stuId = $row["stu_id"];
        $stuName = $row["stu_name"]; 
        $stuOcc = $row["stu_occ"];
        $stuImg = $row["stu_img"];
        $stuType = $row["user_type"];

    }
?>