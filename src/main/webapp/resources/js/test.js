
	$(document).ready(function() {
		var formObj = $("form");
		$('button').on("click", function(e) {
			debugger;
			
			e.preventDefault();

			var operation = $(this).data("oper");

			console.log(operation);

			if (operation === 'delete') {
				formObj.attr("action", "/board/remove");
			} else {
				self.location = "/board/list";
				return;
			}
			formObj.submit();
		});
	});
