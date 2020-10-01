import 'package:Seats/widgets/CheckWidget.dart';
import 'package:Seats/widgets/Mapscreen.dart';
import 'package:Seats/widgets/Parameter.dart';
import 'package:Seats/widgets/Stats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key key, this.params , this.title})
      : super(key: key);

  final Map params;
  final title;

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('mymail@gmail.com'),
              accountName: Text('Brinda'),
              currentAccountPicture: CircleAvatar(
                child: Text('B'),
                //backgroundImage: NetworkImage(),
              ),
            ),

            ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Global Checkout'),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CheckWidget()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Geolocalisation'),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Mapscreen()),
                );
              },
            ),
            ListTile(

              title: Text('Statistique'),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Stats()),
                );
              },
            ),
            Divider(),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.cog),
                  title: Text('Parametres'),
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Parameter()),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      );
  }
}


