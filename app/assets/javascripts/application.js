// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  $(".raccoon-time").click(function(){    
    $(".raccoon-fo").css({
                          'z-index' : '5',
                          'opacity' : '1'
    });
    
  });
  
    $(".raccoon-fo").click(function(){    
    $(".raccoon-fo").css({
                          'z-index' : '-5',
                          'opacity' : '0'
    }); 
  });
});

  function loadRaccoon(id, avatar){
     var raccoon = "/raccoons/" + id + ".json";
    $.getJSON(raccoon, function(data){
      var html = "";
	// alert(data[index].content);
	 html += "<image src = '" + avatar + "'/><h2>" + data["name"] + "</h2><p>Claw Ferocity: " + data["claw_ferocity"] + "</p><p>Disposition: " + data["disposition"] + "</p><br>";
	// update our div
	  $(".inforaccoon").html(html);
	});
       }