<?php
namespace Home\Controller;
use Think\Controller;
//从Public/Lib目录导入TopSdk.php文件
import("openIM.TopSdk",'./Public/Lib/','.php');

class MemberController extends Controller {
	//空方法（所有未知方法的请求都转到此函数）
    public function _empty(){
        echo 'error';
    }

    /* 用户登陆接口
    *   @param:loginname 登陆名称（可以是登录名、电话、邮箱）
    *   @param:password 密码（送来的会是md5加密过的）
    *   @return:code 1成功 0失败
    *   @return:msg 失败原因 
    */
    public function checkLogin($loginname,$password) {
    	$Model = M('member');
    	$rs = $Model->where("loginname = '%s' OR phone = '%s' OR email = '%s'",$loginname)->select();
    	if ($password == $rs[0]['password']) {
    		$returnData['code'] = 1;
    		$returnData['msg'] = '登陆成功！'; 
    		$this->ajaxReturn($returnData);
    	} else {
    		$returnData['code'] = 0;
    		$returnData['msg'] = '密码输入错误！'; 
    		$this->ajaxReturn($returnData);
    	}
    }

    public function getMemberInfo($userid) {
    	$Model = M('member');
    	$rs = $Model->where("userid = '%s'",$userid)->select();
    	//与以前的$this->assign()方法相同
    	$this->memberinfo = $rs[0];
    	$this->display();
    }

    //openIM测试
    public function testSDK() {
        $rs = $this->getAccountSDK('test');
        //$arr = (array)$rs;
        dump($rs->userinfos->userinfos);
    }

    private function getAccountSDK($user) {
        $c = new \TopClient;        //thinkphp导入的第三方类，需要在前面加\
        $c->appkey = C('APPKEY');   //从thinkphp配置文件取值
        $c->secretKey = C('SECRET');    //从thinkphp配置文件取值
        $req = new \OpenimUsersGetRequest;  //thinkphp导入的第三方类，需要在前面加\
        $req->setUserids($user);
        $resp = $c->execute($req);
        return $resp;
    }

    private function addAccountSDK($user,$pass) {
        $c = new \TopClient;        //thinkphp导入的第三方类，需要在前面加\
        $c->appkey = C('APPKEY');   //从thinkphp配置文件取值
        $c->secretKey = C('SECRET');    //从thinkphp配置文件取值
        $req = new \OpenimUsersAddRequest;
        $userinfos = new \Userinfos;    //thinkphp导入的第三方类，需要在前面加\
        $userinfos->userid=$user;
        $userinfos->password=$pass;
        $req->setUserinfos(json_encode($userinfos));
        $resp = $c->execute($req);
        return $resp;
    }


}