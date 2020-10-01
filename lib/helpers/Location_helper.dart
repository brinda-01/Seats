import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = 'AIzaSyA6m6y4x8u5Mj6Z92igQ-Z5krNdTkluyso';

class LocationHelper{
  static String generationLocationPreviewImage({@required double latitude,@required double longitude}){
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&sensor=false&key=$GOOGLE_API_KEY';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY';
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}