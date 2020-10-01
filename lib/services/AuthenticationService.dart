import 'dart:async';
import 'dart:convert';
import 'package:Seats/Properties.dart';
import 'package:Seats/models/LoginViewModel.dart';
import 'package:http/http.dart' as http;


Future<http.Response> login(LoginViewModel loginViewModel) async{
  String url = Properties.log;
  final response = await http.post(url,
      /*headers: <String, String>{
          'content-type' : 'application/json; charset=UTF8',
      },*/
      body: json.encode(LoginViewModel.converttoJson(loginViewModel))
  );
  print(response.body.toString());
  print(response.statusCode);
  print(loginViewModel.username);
  print(loginViewModel.password);
  return response;
}