$(document).ready(function() {
    let selected_type = '';
    $( "select" ).change(function () {
         $( "select option:selected" ).each(function() {
              selected_type = $( this ).text() + " ";
        });
        if(selected_type === "CoupeCarriage "){
            $( "#top_seats" ).show();
            $( "#bottom_seats" ).show();
            $( "#side_top_seats" ).hide();
            $( "#side_bottom_seats" ).hide();
            $( "#seat_place" ).hide();
        }else if(selected_type === "EconomyCarriage "){
            $( "#top_seats" ).show();
            $( "#bottom_seats" ).show();
            $( "#side_top_seats" ).show();
            $( "#side_bottom_seats" ).show();
            $( "#seat_place" ).hide();
        }else if(selected_type === "SvCarriage "){
            $( "#top_seats" ).hide();
            $( "#bottom_seats" ).show();
            $( "#side_top_seats" ).hide();
            $( "#side_bottom_seats" ).hide();
            $( "#seat_place" ).hide();
        }else if(selected_type === "SeatCarriage "){
            $( "#top_seats" ).hide();
            $( "#bottom_seats" ).hide();
            $( "#side_top_seats" ).hide();
            $( "#side_bottom_seats" ).hide();
            $( "#seat_place" ).show();
        }
    })

})