
<?php 
require "./config.php";
if(isset($_REQUEST['url'])){
$url = trim($_REQUEST['url']);
$url = explode('/', $url);
$Object = trim($url[0]);
$Action = trim($url[1]);
}
$requestType = $_SERVER['REQUEST_METHOD'];

if( empty($Object) )  die; 

if( !class_exists($Object) ) die; 
$Handle = new $Object();

if($Action==='list'){ 
	$Action.='ing';
	if($requestType !== 'GET') die;
	$Handle->$Action();	 
}else if($Action ==='review' || $Action === 'search'){
	if(key_exists(2,$url) && is_numeric($url[2]) ) {

		if(!method_exists($Object, $Action) )die;

		$Handle->$Action( $url[2] );	
	}
	
}else if( !key_exists(3,$url)  && is_numeric( $url[1]) ){
		$Action = 'index';
		$Handle->$Action($url[1]);   
}



?>