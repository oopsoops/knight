<?php
namespace Home\Controller;
use Think\Controller;
//空controller，所有未知controller都转到此类
class EmptyController extends Controller {
    public function _empty(){
        echo 'error';
    }
}