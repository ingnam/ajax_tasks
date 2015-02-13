jQuery ->
	$(window).scroll ->
		# check whether the user have reached the bottom of the page 
		url = $('.pagination .next_page').attr('href')
		if url && $(window).scrollTop() > $(document).height() - $(window).height()
			# Load a JavaScript file from the server using a GET HTTP request, then execute it.
			# jQuery.getScript(url) = $.getScript(url)
			# fetch the next page results and the link is available in the pagination 
			# this will trigger the 'articles#index' and passing in the proper page 
			# expects to return some javascript thats get executed 
			$('.pagination').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />')
			$.getScript(url)
	