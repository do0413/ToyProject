//	$(document).ready(function() {
//	
//		commentList();
//	});
	
	//리뷰 목록
//	function commentList(){
//		$('#review_content').empty();
//	  $.ajax({
//	     url : 'reviewListAjax.re',
//	     contentType : 'application/x-www-form-urlencoded; charset=utf-8',
//	     success: function(data) {
//	    	 	var output = '';
//				$.each(data, function(index, item) {
//					output += '<div class="col-lg-4 col-md-6 col-sm-6">';
//					output += '<div class="product-item">';
//					output += '<div><img src="resources/img/store/store_gogi.png"></div></div>';
//					output += '<div class="card_store_name"><div class="text_right"><h5>';
//					output += '<a href="#" style="display: inline">' + item.title + '</a>';
//					output += '<input type="hidden" id="avgStar" class="avgStar" name="avgStar" value="' + item.star + '" style="border: none" />' +item.star;
//					output += '</h5></div></div></div>';
//				});
//				$('#review_content').append(output);
//			},
//			error:function() {
//				alert("ajax통신 실패");
//			}
//	  });
//	}


	var s_addr = [];
	var meat =[];  
	var star = [];
	
	$('#checkBtn').click(function() {
		s_addr = [];
		meat = [];
		star = [];
		
		if($('input[name=f_Acheck]').is(":checked") == true) {
			$('input[name=f_Acheck]:checked').each(function() {
				s_addr.push($(this).val());
			});
		}
		
		if($('input[name=f_Mcheck]').is(":checked") == true){
			$('input[name=f_Mcheck]:checked').each(function() {
				meat.push($(this).val());
			});
		}
		
		star.push($('input[name=f_Scheck]:checked').val());
		
		getlist(s_addr, meat,star);

	})
	
	function getlist(s_addr, meat, star) {
		var step;
		var params = {"s_addr" : s_addr, "meat" : meat, "star" : star};
	 	$.ajax({
				//type:'post',
				url:'./reviewlist_ajax.re',
				contentType : "application/json; charset=utf-8",
				data: JSON.stringify(params),
				type : "POST",
				dataType: 'json',
				
				success : function(data)
				{
					$('#reviewListContent').empty();
					$.each(data, function(index, item){
						
						var output= '';
						
						if (item.meat == 0){
							meat = '소고기'
						}
						else {
							meat = '돼지고기'
						}
						
						output += '<div class="col-lg-4 col-md-6 col-sm-6">' +
									 '<div class="product__item">' +
									 	'<div class="product__item__pic set-bg" data-setbg="./resources/img/store/' + item.review_img1 + '" style="background-image: url(\'./resources/img/store/'+item.review_img1+'\');"></div>' +
									 		'<div class="product__item__text">'+
									 	'<h6><a href="./reviewDetail.re?review_num=' + item.review_num + '">'+ item.title +'</a></h6>' +
									 	'<span id="reviewStar" style="color: #edbb0e;">';
								for (var i=0; i<item.star; i++) {
									output += '<sapn class="fa fa-star" />';
 								}
						output += '</div></div></div>';
								
						$('#reviewListContent').append(output);
						
					});//each 끝			
				}, //success 끝  
				error : function(Request,Status, error) { 
					alert("리뷰 리스트 오류");
				}//error 끝
			}); //ajax끝
		};//input:checked끝