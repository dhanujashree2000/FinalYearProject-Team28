

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Get Visitor's Location Using HTML5 Geolocation</title>
<script>
    function showPosition() {
        if(navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
              
                var positionInfo = position.coords.longitude+";"+ position.coords.latitude ;
              var positionlong=position.coords.longitude ;
               document.getElementById("result").innerHTML = positionInfo;
             
            });
        } else {
            alert("Sorry, your browser does not support HTML5 geolocation.");
        }
    }
</script>
</head>
<body>
    <div id="result">
        <!--Position information will be inserted here-->
    </div>
   <% String positionInfo=request.getParameter("positionInfo");
      /* if(positionInfo!=null){*/
           System.out.println(positionInfo);
      /*  } */
     out.println("Request"+request.getParameter("positionInfo"));%>
    <button type="submit" onclick="showPosition();">Show Position</button>
</body>
</html>
