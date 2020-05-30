//初回読み込み、リロード、ページ切り替えで動く。
$(document).on('turbolinks:load', function() {

  $("#top-message").fadeIn(1400);
  $('#about-main-message').fadeIn(1000);
  $('#verinfo2').slideDown(1000);
  $('#verinfo_readme').slideDown(1000);
  setTimeout("$('.time-limit').fadeOut('slow')", 1200)

  $('.post-img').click(
  function(){
    $('.img-modal-wrapper').fadeIn();
  });
  $('.close-modal').click(function(){
    $('.img-modal-wrapper').fadeOut();
    $('.follow-modal-wrapper').fadeOut();
    $('.follower-modal-wrapper').fadeOut();
  });
  $('#follow_btn').click(
    function(){
      $('.follow-modal-wrapper').fadeIn();
    });
  $('#follower_btn').click(
    function(){
      $('.follower-modal-wrapper').fadeIn();
    });



});
