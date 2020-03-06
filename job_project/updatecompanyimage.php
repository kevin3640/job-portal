<?php 
  $upload_path = 'companydb/';

date_default_timezone_set("Asia/Calcutta");   //India time (GMT+5:30)

 $email=$_REQUEST['email'];
define('DB_HOST','localhost');
define('DB_USERNAME','root');
define('DB_PASSWORD','');
define('DB_NAME','id8579446_jobbooth_db');

 //Getting the server ip 
 $server_ip = gethostbyname(gethostname());
 
 //creating the upload url 
 $upload_url = 'http://'.$server_ip.'/job_project/'.$upload_path; 
 
 //response array 
 $response = array(); 
 
 
 if($_SERVER['REQUEST_METHOD']=='POST'){
 
 //checking the required parameters from the request 
 if(isset($_FILES['image']['name'])){
 
 //connecting to the database 
 
 $cn= mysqli_connect(DB_HOST,DB_USERNAME,DB_PASSWORD,DB_NAME) or die('Unable to Connect...');
 
 //getting file info from the request 
 $fileinfo = pathinfo($_FILES['image']['name']);
 
 //getting the file extension 
 $extension = $fileinfo['extension'];
 
 //file url to store in the database 
 $file_url = $upload_url . getFileName() . '.' . $extension;
 
 //file path to upload in the server 
 $file_path = $upload_path . date('dmYHis') . '.'. $extension; 
 
 $imgname=date('dmYHis').'.'.$extension;
 //trying to save the file in the directory 
 try{
 //saving the file 
 
 move_uploaded_file($_FILES['image']['tmp_name'],$file_path);
 $sql = "update dpcompany set image='$imgname' where email='$email'";
 
 //adding the path and name to database 
 if(mysqli_query($cn,$sql)){
 
 //filling response array with values  8f7 
 $response['result'] = true; 
 $response['url'] = $file_url; 
 
 }
 //if some error occurred 
 }catch(Exception $e){
 $response['result']=false;
 $response['message']=$e->getMessage();
 } 
 //displaying the response 
 echo json_encode($response);
 
 //closing the connection 
 mysqli_close($cn);
 }else{
 $response['result']=true;
 $response['message']='Please choose a file';
 }
 }
 
 /*
 We are generating the file name 
 so this method will return a file name for the image to be upload 
 */
 function getFileName(){
  include "connection.php";
 $sql = "SELECT max(id) as id FROM dpcompany";
 $result = mysqli_fetch_array(mysqli_query($cn,$sql));
 
 mysqli_close($cn);
 if($result['id']==null)
 return 1; 
 else 
 return ++$result['id']; 
 }