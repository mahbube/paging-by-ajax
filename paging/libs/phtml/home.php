<div class="main">
   
   <?php
   $slct=db_get_rows('article');
   $url="/paging/paging_ajax/article_";
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

