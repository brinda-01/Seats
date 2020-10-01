
import 'package:Seats/models/Eleve.dart';
import 'package:Seats/models/Utilisateur.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Parent.g.dart';

@JsonSerializable(explicitToJson: true)

class Parent extends Utilisateur{
  String nom;
  String prenom;
  String telephone;
  List <Eleve> eleveList;


  Parent(this.prenom, this.nom, this.telephone, this.eleveList) : super(null, '', '', '', null, false, '');

 Map<String, dynamic> toJson() =>
     _$ParentToJson(this);

  static Parent fromJson(Map<String, dynamic> map) =>
      _$ParentFromJson(map);
}