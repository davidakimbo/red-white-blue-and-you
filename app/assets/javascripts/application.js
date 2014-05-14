// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function searchFunction() {
  //zip code
  var zipCode = $('#search-box').val();
  var apikey = "3d6c0c31357d497a85e301eb4955c42c";

  var sunlightUrl = "http://congress.api.sunlightfoundation.com/legislators/locate?zip=" + zipCode + "&apikey=" + apikey;

  var response = $.ajax({
    url: sunlightUrl,
    method: 'get',
    dataType: 'json'
  }).done(function(data){ //data already represents response.responseJSON
      console.log(data.results);
      $('#search-results').removeClass('hidden');
      $('#search-box, #search-button').addClass('hidden');
      var politicianInfo = data.results[0];
      $('<div id="first-name">').text(politicianInfo.first_name).appendTo('#search-results');
      $('<div id="last-name">').text(politicianInfo.last_name).appendTo('#search-results');
      $('<div id="birthday">').text(politicianInfo.birthday).appendTo('#search-results');
  });

}


$(document).ready(function() {

  //Search
  $('#search-button').click(searchFunction);


});
