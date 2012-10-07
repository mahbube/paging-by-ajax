<?php

// View funcs ....

defined('ACCESS') or die('Restricted access !');

function send($data){
	echo $data;
}

function death($data){
	if(strlen($data)>0) send($data);
	die();
}

function go2url($url){
	header("Location: $url");
	death();
}
/************** start paging ***********************/

//generate <li> & <a> 
function paging($select,$per_page,$g_num,$url){
	if($select){
		//$per_page =hade aksar chan mored dar har page dide shavad
		//$g_num= dar har gorup chan li bashad
		$count=count($select);
		$num=ceil($count/$per_page);
		if($count > $per_page){
			$html.="<div class='pagin_div' id='pagin_div'>
						<ul class='paging'>
							<li  class='prev-g'></li>";
			$begin=0;
			$g_count=1;//shomareshgar gorup(g)
			$valid_g=true;
			for($i=1;$i<=$num;$i++){
				if(fmod($i,$g_num) && $valid_g) {
					$html.="<div class='group-".$g_count."'>";
					$g_count++ ;
					$valid_g=false;
				}
				$html.="<li>
							<a href='#' title='".$url.$begin."_".$per_page.".html' class='s'>$i</a>
						</li>";
				if(!fmod($i,$g_num)) {
					$html.="</div>";
					//$lst_li=fmod($i,$g_num);
					$valid_g=true;
				}
				$begin +=$per_page ;
			}
			if(!$valid_g) $html.='</div>';
			$html.="<li class='next-g'></li></ul></div>";
		}
	}
	return $html;
}

//generate the content of our list 
function gen_paging($slct,$list,$lmt_star,$lmt_end){
	if($list=='article'){
		foreach($slct as $list){
			$html.="<div>
						شماره مقاله:<br/>$list[id]<br/>
						عنوان مقاله:<br/>$list[title_farsi]<br/>
						کدملی ارسال کننده:<br/>$list[melli_cod]<br/>
						وضعیت:  $list[status]
					</div>";
		}
		$html.="<div class='clear'></div>";
	}
	return $html;
}
