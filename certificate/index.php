<?php
    // reference the Dompdf namespace
    require_once 'dompdf/autoload.inc.php';
    use Dompdf\Dompdf;
    //$dompdf = new Dompdf(array('isPhpEnabled' => true));

    // instantiate and use the dompdf class
    $dompdf = new Dompdf();
    $dompdf->loadPhp(file_get_contents("in.php"));
    //$dompdf->loadHtml();

    
    // (Optional) Setup the paper size and orientation
    $dompdf->setPaper('A4', 'landscape');
    $dompdf->set_Option('isPhpEnabled', true);
    $dompdf->set_option('isHtml5ParserEnabled', true);
    // Render the HTML as PDF
    $dompdf->render();

    // Output the generated PDF to Browser
    $dompdf->stream();
?>
