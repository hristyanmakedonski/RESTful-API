<?php 
require "./config.php";

class Candidates extends Db{
	private $requestType;
	public function __construct(){
		parent::__construct(); //initiate db connection
		$this->requestType = $_SERVER['REQUEST_METHOD'];
	}
	public function index($id){

		if($this->requestType ==="GET"){
			echo json_encode(array('result'=>
										$this->select('SELECT * FROM `restful`.`candidates` WHERE id='.$id))
							);
		}

		if($this->requestType ==="DELETE"){
			echo json_encode(	array('status'=>
										$this->query('DELETE FROM `restful`.`candidates` WHERE  `id`='.$id)) 
							);		
		}
		if($this->requestType === 'POST'){
			$this->review($id);
		}
	}
	public function listing(){
		if($this->requestType ==="GET"){
			echo json_encode( array('result'=>
										$this->select('SELECT * FROM `restful`.`candidates`') ) 
						);	
		}
	}
	public function review($id){
		if($this->requestType ==="PUT" || $this->requestType=="POST" ){
			
			$params = array();
			
			//get params
			if($this->requestType ==="PUT"){
				parse_str(file_get_contents('php://input'), $params); 	
			}else {

				//when request is POST
				$params  = $_REQUEST;
			}
			
			

			//check if such an record already exist
			$result = $this->select('SELECT * FROM `restful`.`candidates` WHERE id='.$id);

			if(empty($result) ){
				$result = $this->query("INSERT INTO `restful`.`candidates` (`name`, `position`, `created_on`) VALUES ('".$params['name']."', '".$params['position']."', '".date('Y-m-d h:m:s')."')");


				echo json_encode(array(	'status'=>$result,
										'id'=>mysqli_insert_id($this->db)
										)
									);
			}else{
				//if it doesn't exist it will save it and return back the candidate id


				//prepare set clause
				$set = '';
				if(key_exists('position', $params) && key_exists('name', $params)){
					$set .= '`name`="'.$params['name'] . '", ';
					$set .= '`position`="'.$params['position'].'"';
				}else if(key_exists('name', $params)){
					$set .= '`name`="'.$params['name'].'"';		
				}
				else if(key_exists('position', $params)){
					$set .= '`position`="'.$params['position'].'"';		
				}
				$result = $this->query("UPDATE `restful`.`candidates` SET ".$set." WHERE  `id`=".$id);
				echo json_encode(array('status' => $result) );	
			}
		}
	}
	public function search($id){
		$this->index($id);
	}

}
