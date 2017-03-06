$(function() {
  $('.member').hover(
    function () {
      var profile = $(this).attr('profile');
      $('.projects-member-profile').append($(`<div class="member-profile">${profile}</div>`));
    },
    function () {
      $('.projects-member-profile').find("div:last").remove();
    }
  );
});
