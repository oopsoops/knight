<?php
include "TopSdk.php";


//$appkey = "23267468";
//$secret = "bdefcbfa91ac3b978b9751d031f407fa";

//$resp = addAccount("test","123456");
$resp = getAccount("yuyi");

var_dump($resp);


function getAccount($user) {
	$appkey = "23263547";
	$secret = "fa16eefacab90dda4dac244461e769a4";
	$c = new TopClient;
	$c->appkey = $appkey;
	$c->secretKey = $secret;
	$req = new OpenimUsersGetRequest;
	$req->setUserids($user);
	$resp = $c->execute($req);
	return $resp;
}

function addAccount($user,$pass) {
	$appkey = "23263547";
	$secret = "fa16eefacab90dda4dac244461e769a4";
	$c = new TopClient;
	$c->appkey = $appkey;
	$c->secretKey = $secret;
	$req = new OpenimUsersAddRequest;
	$userinfos = new Userinfos;
	$userinfos->userid=$user;
	$userinfos->password=$pass;
	$req->setUserinfos(json_encode($userinfos));
	$resp = $c->execute($req);
	return $resp;
}
?>