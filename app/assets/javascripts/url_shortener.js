initClickable = function(){
    $('.clickable').click(function(event) {
        var clicked_div = $(this);
		//create a stat
		$.ajax({
			type: "POST",
			url: '/urls/'+clicked_div.data('urlid')+'/stats'
		});
    });
}

$(initClickable)
