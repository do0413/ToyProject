
	$('[id=checkBtn]').on("click", function(){	
		if($('input[name=s_addr]').is(":checked") == true){
				
			//var s_addr =[];
			$('input[name=s_addr]:checked').each(function(){
			
				//s_addr.push($(this).val())
			 	$.ajax({
						//type:'post',
						url:'./storelist_ajax.li',
						contentType : 'application/x-www-form-urlencoded;charset=utf-8',
						data: {'s_addr' : $(this).val()},
						dataType: 'json',
						success : function(data)
						{
							$('#output').empty();
							$.each(data, function(index, item){
								var output= '';
								
								output += '<div class="card_store_box">'+
											'<div class="card_store_addr" >'+
												'<div class="text_left">'+
													'<h5>'+ item.s_name + '</h5>'+
												'</div>'+
											'</div>'+
										'</div>';
										
								$('#output').append(output);
							});//each 끝
										
						}, //success 끝  
						error : function(Request,Status, error) { 
							alert("ajax통신실패")
						}//error 끝
					}); //ajax끝
				}); //input:checked끝
			} //if 끝
		}); //btn function끝
