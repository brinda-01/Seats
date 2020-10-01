import '../StudentDetails.dart';
import 'package:Seats/UserData.dart';
import 'package:Seats/models/Eleve.dart';
import 'package:Seats/services/StudentlistbyUser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class Studentlist extends StatefulWidget {
  static var storage = FlutterSecureStorage();
  Studentlist({Key key}) : super(key:key);

  @override
  _StudentlistState createState() => _StudentlistState();
}

class _StudentlistState extends State<Studentlist> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  Future<bool> _onWillPop() async {
    return Navigator.push(context, MaterialPageRoute(builder: (context) => Studentlist()));
  }
  //String id = UserData.getIdUtilisateur.toString();
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text('Mes Enfants', style: TextStyle(color: Colors.white),)
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child:  FutureBuilder(
                future: UserData.getIdUtilisateur(),
                builder: (context, idUser){
                  if(idUser.hasData){
                    return FutureBuilder<List<Eleve>>(
                      future: fetchalleleve(),
                      builder: (context, snapshot){
                        if (snapshot.hasData){
                          return ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(new MaterialPageRoute(
                                        builder: (context)=> new Student(eleve: snapshot.data[index],)
                                    ));
                                  },
                                  child: Card(
                                    elevation: 10,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            snapshot.data[index].idEmpreinte == null ? '' : snapshot.data[index].idEmpreinte.toString(),
                                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5,),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                snapshot.data[index].nom == null ? '' :'Name : ' +  snapshot.data[index].nom + ' ',
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              Text(snapshot.data[index].prenom == null ? '' : snapshot.data[index].prenom,
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }else if(snapshot.hasError){
                          print(snapshot.error);
                        }
                        return  Center(child: CircularProgressIndicator());},
                    );
                  }
                  else{
                    return Center(child: CircularProgressIndicator());
                  }
                }
            )
        ),
      ),
    );
  }
}
