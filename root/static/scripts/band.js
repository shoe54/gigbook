 $(document).ready(function() {
	 $('.carousel').carousel({
		    interval: 4000
	 });
     $('#am').popover({
   	    content: $('#ampop').html()
  	 });
     $('#ch').popover({
  	    content: $('#chpop').html()
 	 });
     $('#dragon').popover({
  	    content: $('#dragonpop').html()
 	 });
     $('#fotc').popover({
    	    content: $('#fotcpop').html()
	 });
 });