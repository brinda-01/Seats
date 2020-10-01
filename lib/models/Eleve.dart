

import 'package:Seats/models/Parent.dart';
import 'package:Seats/models/Presence.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Eleve.g.dart';

@JsonSerializable(explicitToJson: true)
class Eleve{
  int idEmpreinte;
  String MatriculeEleve;
  String nom;
  String prenom;
  Presence presence;
  List <Parent> listParent;

  Eleve(this.idEmpreinte, this.MatriculeEleve, this.nom, this.prenom,
      this.listParent);

  Map<String, dynamic> toJson() =>
      _$EleveToJson(this);

  static Eleve fromJson(Map<String, dynamic> map) =>
      _$EleveFromJson(map);
}