 $(document).ready(function() {
     $("#giggrab").click(function(event) {
         $('#myModal').modal('show');
         event.preventDefault();
     });
     $("#loginBtn").click(function(event) {
         //$('#myModal').modal('show');
         //event.preventDefault();
    	 var username = $('input:text').val();
    	 if (username == "corporate")
    		 window.location.href = "/giggrab?corporate=1";
    	 else if (username == "artist")
    		 window.location.href = "/giggrab?artist=1";
    	 else
    		 window.location.href = "/giggrab";
     });
 });