import 'package:Seats/components/MyDrawer.dart';
import 'package:Seats/models/Eleve.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';


class Student extends StatelessWidget {
  Eleve eleve;
  Student({this.eleve});

  /*final now = new DateTime.now();
  String formatter = DateFormat('yMd').format(now);*/

  @override
  Widget build(BuildContext context) {
    //final Map user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Details', style: TextStyle(color: Colors.white),),
      ),
      drawer:MyDrawer(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              alignment: Alignment.center,
              child: Text(eleve.nom, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            ),
            FlipCard(
              direction: FlipDirection.VERTICAL,
              flipOnTouch: true,
              front: SlimUserCard(title: 'Date'),
              back: SlimUserDetailCard(
                title: eleve.presence.date == null? "No date": eleve.presence.date.toString(),
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

class SlimUserDetailCard extends StatelessWidget {
  final String title;
  final MaterialColor color;
  SlimUserDetailCard({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child : Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Center(
              child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        ));
  }
}

class SlimUserCard extends StatelessWidget {
  final String title;
  const SlimUserCard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child : Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Center(
              child: Text(title, style: TextStyle(fontSize: 20, ),
              )),
        ));
  }
}