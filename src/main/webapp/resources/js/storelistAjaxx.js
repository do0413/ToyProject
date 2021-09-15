//	$(document).ready(function() {
//		
//		$('input[name=f_Mcheck]').change(function() {
//			$('input[name=f_Mcheck]:checked').each(function() {
//				var mk = "";
//				if($(this).val() == 0) {
//					alert("cow1");
//					mk += '<div class="shoplistfoo"><h5>부위</h5></div>';
//					mk += '<div class="shoplistfot">';
//					mk += '<li><input type="checkbox" id="cow_1" class="f_check" name="f_MKcheck" value="등심">등심</li>';
//					mk += '<li><input type="checkbox" id="cow_2" class="f_check" name="f_MKcheck" value="안심">안심</li>';
//					mk += '<li><input type="checkbox" id="cow_3" class="f_check" name="f_MKcheck" value="채끝살">채끝살</li>';
//					mk += '<li><input type="checkbox" id="cow_4" class="f_check" name="f_MKcheck" value="살치살">살치살</li>';
//					mk += '</div>';
//				} else {
//					alert("pig1");
//					mk += '<div class="shoplistfoo"><h5>부위</h5></div>';
//					mk += '<div class="shoplistfot">';
//					mk += '<li><input type="checkbox" id="pig_1" class="f_check" name="f_MKcheck" value="삼겹살">삼겹살</li>';
//					mk += '<li><input type="checkbox" id="pig_1" class="f_check" name="f_MKcheck" value="항정살">항정살</li>';
//					mk += '<li><input type="checkbox" id="pig_1" class="f_check" name="f_MKcheck" value="목살">목살</li>';
//					mk += '<li><input type="checkbox" id="pig_1" class="f_check" name="f_MKcheck" value="부속고기">부속고기</li>';
//					mk += '</div>';
//				}
//				$('.shoplistfo').append(mk);
//			});
//		})
//	});
	
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
	});
	
	
	function getlist(s_addr, meat, star) {
		var params = {"s_addr" : s_addr, "meat" : meat, "star" : star};
	 	$.ajax({
				//type:'post',
				url:'./storelist_ajax.li',
				contentType : "application/json; charset=utf-8",
				data: JSON.stringify(params),
				type : "POST",
				dataType: 'json',
				
				success : function(data)
				{
					$('#store_list').empty();
					$.each(data, function(index, item){
						console.log(item)
						var output= '';
						
						if (item.meat == 0){
							meat = '소고기'
						} else if (item.meat == 1) {
							meat = '돼지고기'
						} else {
							meat = '가게'
						}
						
						output += 
							'<div class="col-lg-box">' +
								'<div class="table">' +
									'<div class="table-ri">' +
										'<img src="resources/img/store/' + item.thumbnail + '" style="width: 200px; height: 180px;">' +
									'</div>' +
									'<div class="table-le">' +
										'<div class="table-le-topbox">' + 
											'<div class="table-le-name">' +
												'<a href="./storeInfo.st?s_num='+ item.s_num +'">'+ item.s_name +'</a>' +
											'</div>' +
											'<div class="avgStar" id="avgStar" name="avgStar"> ★ '+ item.avgStar +'</div>' +
										'</div>' +
										'<div class="table-le-text"> TEL : ' + item.s_phone + '</div>' +
										'<div class="table-le-text"> 지역 : ' + item.s_addr + '</div>' +
										'<div class="table-le-text"> 품목 : ' + meat + '</div>' +
										'<div class="table-le-text">운영시간 : ' + item.s_hour +'</div>' +
									'</div>' +
								'</div>' +
							'</div>';
						
						$('#store_list').append(output);
						
					});//each 끝			
				}, //success 끝  
				error : function(Request,Status, error) { 
					alert("결과값이 없습니다!");
				}//error 끝
			}); //ajax끝
		};//input:checked끝
		
		
		$('#sortBtn').click(function() {
			
			var avgStar = [];
			
			$('input[name=avgStar]').each(function() {
				avgStar.push($(this).val());
			});
			avgStar.sort();
			alert(avgStar);
		});

			
		
		
	
	
	
	
	
	
	
	
	
	
//	$('[name=f_Acheck]').change(function(){	
//		
//		s_addr = [];
//		
//		if($('input[name=f_Acheck]').is(":checked") == true){
//			
//			$('input[name=f_Acheck]:checked').each(function(){
//				s_addr.push($(this).val());
//			});
//			alert(s_addr);
//			getlist(s_addr,meat);
//		} else {
//			alert("체크를 해주세요!");
//		}
//	});	
//	
//
//	$('[name=f_Mcheck]').change(function(){	
//			
//			meat = []
//			
//			if($('input[name=f_Mcheck]').is(":checked") == true){
//				console.log (meat);
//					$('input[name=f_Mcheck]:checked').each(function(){
//						meat.push($(this).val());
//					});
//				alert(meat);
//				getlist(s_addr,meat);
//			} else {
//				alert("체크를 해주세요!");
//			};
//		}); 
	
	
	
			
		
			