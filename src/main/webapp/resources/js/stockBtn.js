$(".plus").click(function(){
	var num = $(".numBox").val();
	var plusNum = Number(num) + 1;
	//var stock = ${view.gdsStock};
	var stock = $(".menuStock_hidden");
	
	if(plusNum >= stock) {
		$(".numBox").val(num);
	} else {
		$(".numBox").val(plusNum);										
	}
});


// - 버튼을 누르면 수량이 감소하되, 1보다 밑으로 감소하지 않음
$(".minus").click(function(){
	var num = $(".numBox").val();
	var minusNum = Number(num) - 1; 
	
	if(minusNum <= 0) {
		$(".numBox").val(num);
	} else {
		$(".numBox").val(minusNum);										
	}
});