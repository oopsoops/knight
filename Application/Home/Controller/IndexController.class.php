<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function _empty(){
        echo 'error';
    }

    public function index() {
    	
    	$this->display();
    }

}