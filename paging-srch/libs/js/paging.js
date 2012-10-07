$(function(){
	$('ul.paging a').click(function(){
		$res = $(this).attr('title');
		$('#page').fadeOut(1000,function(){				
			$.ajax({
			url : $res,
			success : function(data){
				$("#page").html(data);
				$("#page").fadeIn(3000) ;	
				}
			});
		})
		return false;
	});//end paging 
	
	//show sth like this  <....[1][2]....>
	$("[class|='group']").css('display','none');
	$(".group-1").css('display','block');	
	var g_num=$("[class|='group']").length;
	if(g_num>1){
		$('.next-g').html('....<span >></span>');
	}
	$(".prev-g").click(function(){
		var cls ;//class div gorupe
		for(i=1;i<=g_num;i++){
			cls='.group-'+i ;
			display=$(cls).css('display');
			if(display=='block'){
				blockDiv=i;
				break;
			}
		}
		if(blockDiv!=1){
			if(!$('.prev-g').html())	$('.prev-g').html('<span ><</span>...');
			//$('.prev-g').html('<span >جديدتر&nbsp;<</span>...');
			
			$('.next-g').html('...<span >></span>');
			//$('.next-g').html('...<span >>&nbsp;قدیمی تر</span>');
			clss='.group-'+(blockDiv-1) ;
			$(cls).css('display','none');
			$(clss).css('display','block');
			if(blockDiv-1==1)	$('.prev-g').empty();
		}
	});
	$(".next-g").click(function(){
		var cls ;//class div gorupe
		for(i=1;i<=g_num;i++){
			cls='.group-'+i ;
			display=$(cls).css('display');
			if(display=='block'){
				blockDiv=i;
				break;
			}
		}
		if(blockDiv!=g_num){
			if(!$('.next-g').html()) $('.next-g').html('...<span >></span>');
			//$('.next-g').html('...<span >>&nbsp;قدیمی تر</span>');
			
			$('.prev-g').html('<span ><</span>...');
			//$('.prev-g').html('<span >جديدتر&nbsp;<</span>...');
			clss='.group-'+(blockDiv+1) ; 
			$(cls).css('display','none');
			$(clss).css('display','block');
			if(blockDiv+1==g_num)	$('.next-g').empty();
		}
	});
})

//start srch article
function srchArt(srchBy){
	if(srchBy=='status'){//srch by status
		$("#status option:selected").each(function () {
        	inptVal = $(this).val();
		});
		value='srch_by=' + srchBy +'&inpt_val=' + inptVal;
	}

	$.ajax({
		url: "/paging-srch/srch_ajax/article.html" , 
		type: "POST",
		data: value,
		success : function(data){
			$('.list').html(data);
		}
	});
}