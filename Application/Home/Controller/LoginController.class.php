<?php
namespace Home\Controller;
use Think\Controller;

class LoginController extends Controller {
    public function index(){
    	$this->display();
	}

	public function doLogin(){
		//接受值
		//判断用户在数据库中是否存在
		//存在 允许登录
		//不存在 显示错误信息
		$username=$_POST['username'];
		$password=$_POST['password'];
		$code=$_POST['code'];
        
        function check_verify($code, $id = ''){
			$verify = new \Think\Verify();
			return $verify->check($code, $id);
		}

		if(!check_verify($code,$id = '')){
			$this->error('验证码输入错误！');
		}

		$user=M('User');
		$where['username']=$username;
		$where['password']=$password;
		$arr=$user->field('id')->where($where)->find();
		if($arr){
			$_SESSION['username']=$username;
			$_SESSION['id']=$arr['id'];
			$this->success('用户登录成功',U('Index/index'));
		}else{
			$this->error('该用户不存在');
		}
	}

	public function doLogout(){
		$_SESSION=array();
		if(isset($_COOKIE[session_name()])){
			setcookie(session_name(),'',time()-1,'/');
		}
		session_destroy();
		$this->redirect('Index/index');

	}

}

?>