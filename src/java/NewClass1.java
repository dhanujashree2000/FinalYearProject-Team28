/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class NewClass1 {
    
    public double distance(double lat1, double lon1, double lat2, double lon2, String unit) {
  double theta = lon1 - lon2;
  double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));
  dist = Math.acos(dist);
  dist = rad2deg(dist);
  dist = dist * 60 * 1.1515;
  if (unit == "K") {
    dist = dist* 0.809344 ;//
  } else if (unit == "N") {
  dist = dist * 0.8684;
    }
  return (dist);
}

/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
/*::  This function converts decimal degrees to radians             :*/
/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
private double deg2rad(double deg) {
  return (deg * Math.PI / 180.0);
}

/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
/*::  This function converts radians to decimal degrees             :*/
/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
private double rad2deg(double rad) {
  return (rad * 180.0 / Math.PI);
}


    public static void main(String[] args) 
    { 
       double lat1 = 11.0168; 
        double lat2 = 76.9558; 
        double lon1 = 12.0047; 
        double lon2 = 79.8154;
        NewClass1 as=new NewClass1();
    
System.out.println(as.distance(lat1,lon1,lat2, lon2, "K") + " Kilometers\n");
//system.println(distance(32.9697, -96.80322, 29.46786, -98.53506, "N") + " Nautical Miles\n"); 
    } 
}
