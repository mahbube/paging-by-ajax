<?php

// Main site controller and algorithm ....

defined('ACCESS') or die('Restricted access !');

if($caching_enabled)	require_once('Cache/Lite.php');
require_once('module.php');
require_once('view.php');

$req = $_GET['req'];
if($req=='') go2url( SITE_PATH.'home.html');

$filename=strtolower( $_GET['filename'] );
$filetype=strtolower( $_GET['filetype'] );

initilize();

$page_title = ucwords( str_replace('-',' ',$req) );

check_cache();

if($req=='file'){
	if( $file = @file_get_contents("./libs/$filetype/$filename.$filetype") ){
		send($file);
		finilize();
	}else{
		$req = '404er';
		header('Content-Type: text/html');
	}
}elseif($req=='paging_ajax'){
	$list=$_GET['list'];
	$lmt_star=$_GET['start'];
	$lmt_end=$_GET['end'];
	if($list=='article'){
		$slct=db_get_rows('article','1',"LIMIT $lmt_star , $lmt_end");
	}
	$paging_content=gen_paging($slct,$list,$lmt_star,$lmt_end);
}elseif($req=='srch_ajax'){
	$list=$_GET['list'];
	$srch_by=$_POST['srch_by'];
	$inpt_val=$_POST['inpt_val'];
	if($list=='article'){
		if($srch_by=='status')	$slct=db_get_rows('article',"status='$inpt_val'");
	}
	$srch_content=gen_srch($list,$slct);
}

include('template.php');

finilize();
