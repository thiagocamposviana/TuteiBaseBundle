$("#b_groups").on('click', function(e) {

    $("#group_list").removeClass('hide');
    $("#site_list").addClass('hide');
    $("#default_site").addClass('hide');

});


$("#b_default_site").on('click', function(e) {

    $("#group_list").addClass('hide');
    $("#site_list").addClass('hide');
    $("#default_site").removeClass('hide');

});


$("#b_sites").on('click', function(e) {

    $("#group_list").addClass('hide');
    $("#site_list").removeClass('hide');
    $("#default_site").addClass('hide');

});


