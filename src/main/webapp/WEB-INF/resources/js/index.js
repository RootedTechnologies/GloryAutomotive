/**
 * Created by Cody on 11/6/2014.
 */
$(document).ready(function () {
    renderGoogleMap();

    var mainNavBottom = $(".navbar-floating-top").offset().top + $(".navbar-floating-top").height();
    $(window).scroll(function(){
        if($(window).scrollTop() >= mainNavBottom){
            $(".navbar-fixed-top").removeClass("hidden");
        }
        else {
            $(".navbar-fixed-top").addClass("hidden");
        }
    });

    $(document).on("click", ".navbar-nav li", function(e) {
        var $this = $(this);
        var selectedLink = $this.attr("data-link");
        $(".navbar-nav li").removeClass("active");
        $(".navbar-nav li[data-link='" + selectedLink + "']").addClass("active");
    });
})

function renderGoogleMap(){
    var mapContainer = $("#location")[0];
    var location = {lat: 32.902231, lng: -96.570547};
    var mapOptions = {
        center: location,
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(mapContainer, mapOptions);
    var request = {
        placeId: "ChIJTYumoQOoToYRiRmXaeuw_Bc"
    };

    var template = $("#map-details-template").html();

    var infowindow = new google.maps.InfoWindow();
    var service = new google.maps.places.PlacesService(map);

    service.getDetails(request, function(place, status){
        if (status == google.maps.places.PlacesServiceStatus.OK) {
            var mainMarker = new google.maps.Marker({
                position: place.geometry.location,
                map: map,
                title: "Rowlett Glory Automotive"
            });

            template = template.replace(/{{name}}/g, place.name);
            template = template.replace(/{{line1}}/g, place.street_address);
            template = template.replace(/{{line2}}/g, place.postal_town + " " + place.postal_code);
            var infoWindow = new google.maps.InfoWindow({
                content: template
            });
            google.maps.event.addListener(mainMarker, 'click', function() {
                infowindow.open(map,mainMarker);
            });
        }
    });
}
