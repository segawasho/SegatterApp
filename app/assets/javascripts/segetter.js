//初回読み込み、リロード、ページ切り替えで動く。
$(document).on('turbolinks:load', function() {

  $("#top-message").fadeIn(1400);
  $('#about-main-message').fadeIn(1000);
  $('#verinfo2').slideDown(1000);
  $('#verinfo_readme').slideDown(1000);
  setTimeout("$('.time-limit').fadeOut('slow')", 1200) 

});
