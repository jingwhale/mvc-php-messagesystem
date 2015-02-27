<?php

namespace Home\Model;
use Think\Model\RelationModel;

class MessageModel extends RelationModel{
	protected $_auto=array(
		array('time','time',1,'function'),
		array('uid','getId',1,'callback'),
	);

	protected $_link=array(
		'User'=> array(  
 			'mapping_type' => self::BELONGS_TO,
      		'class_name'=>'User',
      		'foreign_key'=>'uid',
			'mapping_name'=>'user',
			'mapping_fields'=>'username',
			'as_fields'=>'username',
		),	
	);
		
	protected function getId(){
		return $_SESSION['id'];
	}

}

?>