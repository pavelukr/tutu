$(document).ready(function() {
    $('a.edit_route').click(function(e) {
        e.preventDefault();
        const route_id = $(this).data('routeId');
        const form = $('#edit_route_' + route_id);
        const name = $('#route_name_' + route_id);

        if (!$(this).hasClass('cancel')) {
            $(this).html('Cancel')
            $(this).addClass('cancel');
        } else {
            $(this).html('Edit');
            $(this).removeClass('cancel');
        }
        form.toggle();
        name.toggle();
    });
});