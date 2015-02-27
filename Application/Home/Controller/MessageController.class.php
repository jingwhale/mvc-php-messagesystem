<?php
namespace Home\Controller;
use Think\Controller;

class MessageController extends Controller {
	public function doMess(){
			
		$upload = new \Think\Upload();// 实例化上传类
		$upload->rootPath = './Public/Uploads/';//设置附件上传目录
		$info = $upload->upload();
		if(!$info) {// 上传错误提示错误信息
			$this->error($upload->getError());
		}else{// 上传成功 获取上传文件信息
			foreach($info as $file){
			// $savename=$file['savepath'].$file['savename'];
				$savename=$file['savename'];
			}
		}

		$message=D('Message');
		$message->create();
		$message->filename=$savename;
		// $message->time=time();
		// $message->uid=$_SESSION['id'];
		$lastId=$message->add();
		if($lastId){
			$this->success('留言成功');
		}else{
			$this->error('留言失败');
		}
	}
}


?>