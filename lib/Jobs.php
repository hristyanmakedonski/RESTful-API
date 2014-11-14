<?php 
class Jobs extends Db{
	
	private $requestType;
	public function __construct(){
		parent::__construct(); //initiate db connection
		$this->requestType = $_SERVER['REQUEST_METHOD'];
	}	

	public function index($id){

		if($this->requestType ==="GET"){
			echo json_encode(array('result'=>
										$this->select('SELECT * FROM jobs WHERE id='.$id))
							);
		}

		if($this->requestType ==="DELETE"){
			echo json_encode(	array('status'=>
										$this->query('DELETE FROM `restful`.`jobs` WHERE  `id`='.$id)) 
							);		
		}
	}
	public function listing(){
		if($this->requestType ==="GET"){
			echo json_encode( array('result'=>
										$this->select('SELECT * FROM jobs') ) 
						);	
		}
	}
}