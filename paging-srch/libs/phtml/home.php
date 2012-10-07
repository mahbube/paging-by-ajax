<div class="main">
	<div class='srch'>
		<form action='javascript:void(0)' method='post'>
			وضعیت: <select  name='status' id='status'>
				<option value='نامشخص' >امشخض</option>
				<option value='تایید اولیه' >تایید اولیه</option>
				<option value='تایید' >تایید</option>
				<option value='عدم تایید' >عدم تایید</option>
			</select>
			<input type='submit' name='status' value='show' id='status_btn' onclick="srchArt('status')"/> 
		</form>
	</div>
	<div class='list'>
	<?php
	$slct=db_get_rows('article');
	$url="/paging-srch/paging_ajax/article_";
	$html.=paging($slct,3,3,$url);
	$html.="<div id='page' class='art'>
					<script type='text/javascript'>
					$(function(){
						$.ajax({
							url : '/paging/paging_ajax/article_0_3.html',
							success : function(data){
								$('#page').html(data);
								$('#page').fadeIn(2000) ;	
							}
						})
					})
				</script>
		</div>";
	echo $html;
	?>
   </div>
</div>

