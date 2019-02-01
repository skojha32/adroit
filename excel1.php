<?php
 function updateExcel(){
	require_once 'PHPExcel-1.8/Classes/PHPExcel.php';
//database connection 
	$con = mysqli_connect("localhost","root","");
	$db=mysqli_select_db($con,"adroit");
	if (!$con) {
		echo mysqli_errror($con);
		exit;
	}
	$tm=$_POST["tm"];
//create PHPExcel object
	$excel= new PHPExcel();
//selecting active sheet
	$excel->setActiveSheetIndex(0);
//populate the data
	$query= mysqli_query($con,"select * from $tm");
	$row=4;
	while($data = mysqli_fetch_object($query)){
		$excel->getActiveSheet()
		->setCellValue('A'.$row,$data->id)
		->setCellValue('B'.$row,$data->name)
		->setCellValue('C'.$row,$data->institution)
		->setCellValue('D'.$row,$data->email_id)
		->setCellValue('E'.$row,$data->number);
	//increament
		$row++;
	}
//set column width
	$excel->getActiveSheet()->getColumnDimension('A')->setWidth(5);
	$excel->getActiveSheet()->getColumnDimension('B')->setWidth(30);
	$excel->getActiveSheet()->getColumnDimension('C')->setWidth(10);
	$excel->getActiveSheet()->getColumnDimension('D')->setWidth(14);
	$excel->getActiveSheet()->getColumnDimension('E')->setWidth(20);
//make table header
	$excel->getActiveSheet()
	->setCellValue('A1',$tm)
	->setCellValue('A3','ID')
	->setCellValue('B3','Name')
	->setCellValue('C3','Institution')
	->setCellValue('D3','Email ID')
	->setCellValue('E3','Phone Number');
//merging the title
	$excel->getActiveSheet()->mergeCells('A1:H1');
//aligning
	$excel->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal('center');
//styling
	$excel->getActiveSheet()->getStyle('A1')->applyFromArray(
		array(
			'font'=>array(
				'size'=>20,
			)
		)
	);
	$excel->getActiveSheet()->getStyle('A3:H3')->applyFromArray(
		array(
			'font'=>array(
				'bold'=>true
			),
			'borders'=>array(
				'allborders'=>array(
					'style'=>PHPExcel_Style_Border::BORDER_THIN
				)
			)
		)
	);
//give borders to data
	$excel->getActiveSheet()->getStyle('A4:H'.($row-1))->applyFromArray(
		array(
			'borders'=>array(
				'outline'=>array(
					'style'=>PHPExcel_Style_Border::BORDER_THIN
				),
				'vertical'=>array(
					'style'=>PHPExcel_Style_Border::BORDER_THIN
				)
			)
		)
	);
	//redirect to browser (download) insteand of saving the result as a file
	header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
	header('Content-Disposition: attachment; filename="Registered.xlsx"');
	header('Cache-Control: max-age=0');
//write the result to a file
	$file = PHPExcel_IOFactory::createWriter($excel,"Excel2007");
	$file->save('php://output');
}
updateExcel();
?>