/**
 * Created by Cody on 11/6/2014.
 */
var edmundsVehicleInfo, selectedMake, selectedModel;
$(document).ready(function () {
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
    $(document).on("change", "#contact-make", function(e) {
        var $this = $(this);
        toggleModel(false);
        toggleYear(false);
        if($this.val() != ""){
            //find all models under selected make
            edmundsVehicleInfo.makes.forEach(function(make){
               if(make.name == $this.val()){
                    selectedMake = make;
                    updateModels(make.models);
               }
            });
            toggleModel(true);
        }
    });
    $(document).on("change", "#contact-model", function(e){
        var $this = $(this);
        toggleYear(false);
        if($this.val() != ""){
            selectedMake.models.forEach(function(model){
               if(model.name == $this.val()){
                    updateYears(model.years);
               }
            });
            toggleYear(true);
        }
    });
    renderGoogleMap();
    retrieveEdmundsInfo();
});

function retrieveEdmundsInfo(){
    var api_key = 'tb5dupgayccsg8jcu4dwcsb8';
    var url = "https://api.edmunds.com/api/vehicle/v2/makes?view=basic&fmt=json&api_key=tb5dupgayccsg8jcu4dwcsb8";
    $.ajax({
        url: url,
        type: 'GET',
        dataType: 'json',
        success: function(data){
            edmundsVehicleInfo = data;
            updateMakes();
        },
        error: function(e){
            alert("An error occurred retrieving vehicle information from Edmunds API");
        }
    });
}

function updateMakes(){
    var makeSelect = $("#contact-make");
    makeSelect.html("");
    makeSelect.append($('<option>', { value : "" }).text("Select Make"));
    edmundsVehicleInfo.makes.forEach(function(make){
        makeSelect.append($('<option>', { value : make.name }).text(make.name));
    });
    selectedMake = null;
    selectedModel = null;
}

function updateModels(models){
    var modelSelect = $("#contact-model");
    modelSelect.html("");
    modelSelect.append($('<option>', { value : "" }).text("Select Model"));
    models.forEach(function(model){
        modelSelect.append($('<option>', { value : model.name }).text(model.name));
    });
    selectedModel = null;
}

function updateYears(years){
    var yearSelect = $("#contact-year");
    yearSelect.html("");
    yearSelect.append($('<option>', { value : "" }).text("Select Year"));
    years.forEach(function(year){
        yearSelect.append($('<option>', { value : year.year }).text(year.year));
    });
}

function toggleModel(enable){
    if(enable == true){
        $("#contact-model").attr("disabled", false);
    }
    else
    {
        $("#contact-model").attr("disabled", true);
    }
}

function toggleYear(enable){
    if(enable == true){
        $("#contact-year").attr("disabled", false);
    }
    else
    {
        $("#contact-year").attr("disabled", true);
    }
}

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
