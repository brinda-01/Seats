import 'dart:convert';

import 'package:Seats/animations/Animation.dart';
import 'package:Seats/models/LoginViewModel.dart';
import 'package:Seats/models/Utilisateur.dart';
import 'package:Seats/services/AuthenticationService.dart';
import 'package:Seats/widgets/Studentlist.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _username;

  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("SEATS", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                //entrer username
                                onChanged: (value){
                                  _username = value;
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                //entrer mot de passe
                                onChanged: (value){
                                  _password = value;
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 20,),
                      MaterialButton(
                        onPressed: (){
                          //print("hgykkdkdk");
                          login(LoginViewModel(_username, _password)).then((response)
                            {
                              if (response.statusCode == 200){
                                Utilisateur utilisateur = Utilisateur.fromJson(json.decode(response.body));
                                Studentlist.storage.write(key: "idUtilisateur", value: utilisateur.idUtilisateur.toString());
                                Studentlist.storage.write(key: "email", value: utilisateur.email);
                                Studentlist.storage.write(key: "role", value: utilisateur.role);
                                Studentlist.storage.write(key: "sexe", value: utilisateur.sexe);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Studentlist()));
                              }
                              else{
                                Fluttertoast.showToast(msg: response.statusCode.toString(),
                                toastLength: Toast.LENGTH_LONG,
                                timeInSecForIosWeb: 5);
                              }
                            }
                          );
                        },
                        child: FadeAnimation(2, Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(143, 148, 251, 1),
                                    Color.fromRGBO(143, 148, 251, .6),
                                  ]
                              )
                          ),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      ),
                      SizedBox(height: 20,),
                      MaterialButton(
                        onPressed: (){

                        },
                      ),
                      FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}