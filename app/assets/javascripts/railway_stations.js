$(document).ready(function() {
    $('a.edit_station').click(function(e) {
        e.preventDefault();
        const station_id = $(this).data('stationId');
        const form = $('#edit_railway_station_' + station_id);
        const title = $('#railway_station_title_' + station_id);

        if (!$(this).hasClass('cancel')) {
            $(this).html('Cancel')
            $(this).addClass('cancel');
        } else {
            $(this).html('Edit');
            $(this).removeClass('cancel');
        }
        form.toggle();
        title.toggle();
    });
});