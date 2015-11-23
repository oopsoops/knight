<?php
namespace Home\Controller;
use Think\Controller;
class MemberController extends Controller {
	//空方法（所有未知方法的请求都转到此函数）
    public function _empty(){
        echo 'error';
    }

    public function login($loginname,$password) {
    	//与以前的$this->assign()方法相同
    	$this->loginname = $loginname;
    	$this->password = $password;
    	$this->display();
    }

}