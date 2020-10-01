
import 'dart:convert';

import 'package:Seats/models/Presence.dart';
import 'package:http/http.dart' as http;


Future <List<Presence>> fetchallPresence(String matricule,DateTime dateTime) async {
  final response = await http.get('http://192.168.100.49:8005/api/presence/presenceByDate/' +matricule+'?date='+dateTime.year.toString()+'-'+dateTime.month.toString()+'-'+dateTime.day.toString());
  print(response.body);
  if (response.statusCode ==200){
    List jsonData = json.decode(response.body);
    return jsonData.map((e) => Presence.fromJson(e)).toList();
  }
  else{
    throw Exception(response.statusCode.toString() + '' +response.body);
  }
}


/*
Future <Response> _getTimes(String matricule,DateTime dateTime) async {
  // Récupération de la localisation actuelle de l'utilisateur
  //var geoloc = await location.getLocation();
  // Construction de l'URL a appeler
  //var url = 'https://api.sunrise-sunset.org/json?lat=${geoloc.latitude}&lng=${geoloc.longitude}&formatted=0';
  var url = await http.get('http://192.168.100.49:8005/api/presence/presenceByDate/' +matricule+'?date='+dateTime.year.toString()+'-'+dateTime.month.toString()+'-'+dateTime.day.toString()) ;
  // Appel
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  return response;
}*/
