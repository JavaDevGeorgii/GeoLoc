<%--
  Created by IntelliJ IDEA.
  User: GEO
  Date: 12.04.16
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <style type="text/css">
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #map {
            height: 70%;
            width: 70%;
            margin: auto
        }
    </style>

    <meta charset="UTF-8">
    <title>GEO LOCATION</title>
</head>
<body>
<div id="map" style="margin-top: 50px"></div>
<script type="text/javascript">

    function initMap() {

        navigator.geolocation.getCurrentPosition(function (position) {
            latt = position.coords.latitude;
            longg = position.coords.longitude;
            
            var map = new google.maps.Map(document.getElementById('map'), {
                center: {lat: latt, lng: longg},
                zoom: 15
            });

            var marker = new google.maps.Marker({
                position: {lat: latt, lng: longg},
                map: map,
                title: 'Your position: lat='+latt+' lng='+longg
            });

        });
    }

</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCspQKEkW9IPhTpmqmNpesAsYXBi3goYPY&callback=initMap">
</script>


</body>
</html>


