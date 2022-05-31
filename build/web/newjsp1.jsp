

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<body>
<title>Get Current Location Sample</title>
<h4>Click the below button to get your current location coordinates.</h4>
<button onclick="getLocation()">Get My Current Location</button>
<div id="displayId"></div>
<script>
var display = document.getElementById("displayId");
function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(displayPosition);
  } else {
    display.innerHTML = "Geolocation is not supported by this browser.";
  }
}
function displayPosition(position) {
  display.innerHTML = "<br>Latitude: " + position.coords.latitude +
  "<br>Longitude: " + position.coords.longitude;
}
</script>
</body>
</html>
