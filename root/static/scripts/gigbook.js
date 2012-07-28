 $(document).ready(function() {
     $("#login").click(function(event) {
         $('#myModal').modal('show');
         event.preventDefault();
     });
     $("#loginBtn").click(function(event) {
         //$('#myModal').modal('show');
         //event.preventDefault();
    	 var username = $('input:text').val();
    	 if (username == "corporate")
    		 window.location.href = "/?corporate=1";
    	 else if (username == "artist")
    		 window.location.href = "/?artist=1";
     });
 });