import 'dart:convert';
import 'dart:io';
import 'package:Seats/models/Eleve.dart';
import 'package:http/http.dart' as http;
import 'package:Seats/Properties.dart';

Future<List<Eleve>> fetchalleleve() async{
  print("vvhviuvhvhv");
  //String url = (Properties.url + 'eleve/listeEleve/byIdParent/' + id);
  final response = await http.get('http://192.168.100.49:8005/api/eleve/listeEleve/byIdParent/23');
  print(response.body);
  if (response.statusCode ==200){
    List jsonData = json.decode(response.body);
    return jsonData.map((e) => Eleve.fromJson(e)).toList();
  }
  else{
    throw Exception(response.statusCode.toString() + '' +response.body);
  }

}