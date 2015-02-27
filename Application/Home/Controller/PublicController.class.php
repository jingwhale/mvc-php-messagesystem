<?php
namespace Home\Controller;
use Think\Controller;
class PublicController extends Controller {
    public function code(){
    	$Verify = new \Think\Verify();
    	$Verify->fontSize = 16;  
 		$Verify->length   = 4;
    	$Verify->imageW = 130;  
 		$Verify->imageH = 30;
		$Verify->entry();
}
}

?>