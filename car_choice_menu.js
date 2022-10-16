$(document).ready(function(){
    $('ul.choice_menu_ul li').click(function(){
        var tab_id = $(this).attr('data-tab');

        $('ul.choice_menu_ul li').removeClass('current');
        $('.choice_list').removeClass('current');

        $(this).addClass('current');
        $("#"+tab_id).addClass('current');
    });
});  