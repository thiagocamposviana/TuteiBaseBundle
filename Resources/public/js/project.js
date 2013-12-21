//Add Hover effect to menus
$('ul.nav li.dropdown').hover(function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(50).fadeIn();
}, function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(50).fadeOut();
});