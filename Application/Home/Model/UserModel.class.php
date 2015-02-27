<?php
namespace Home\Model;
use Think\Model;

class UserModel extends Model{
	protected $_validate=array(
		array('code','require','验证码必须填写!'),
		array('code','checkCode','验证码错误!',0,'callback',1),
		array('username','require','用户必须填写!'),
		array('username','','用户已经存在',0,'unique',1),
		array('username','/^\w{6,}$/','用户名必须6个字母以上',0,'regex',1),
		array('repassword','password','确认密码不正确',0,'confirm'), 
	);

	protected function checkCode($code){
		function check_verify($code, $id = ''){
			$verify = new \Think\Verify();
			return $verify->check($code, $id);
		}

		if(!check_verify($code,$id = '')){
			return false;
		}else{
			return true;
		}
	}

}
?>
