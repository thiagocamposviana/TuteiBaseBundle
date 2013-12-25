//Add Hover effect to menus
$('ul.top-menu-items li.dropdown').hover(function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(50).fadeIn();
}, function() {
  $(this).find('.dropdown-menu').stop(true, true).delay(50).fadeOut();
});

$("a[data-theme]").click(function() {
    $("head link#theme").attr("href", $(this).data("theme"));
});

if($.cookie("css")) {
	$("head link#theme").attr("href",$.cookie("css"));
}
$(document).ready(function() { 
	$("a[data-theme]").click(function() {
		$("head link#theme").attr("href", $(this).data("theme"));
		$.cookie("css",$(this).data("theme"), {expires: 365, path: '/'});
		return false;
	});
});