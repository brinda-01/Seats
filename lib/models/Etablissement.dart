
import 'package:Seats/models/Adresse.dart';
import 'package:Seats/models/Boitier.dart';
import 'package:Seats/models/Classe.dart';
import 'package:Seats/models/Responsable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Etablissement.g.dart';

@JsonSerializable(explicitToJson: true)

class Etablissement{
  int idEtablissement;
  String nom;
  Adresse adresse;
  Boitier boitier;
  List <Classe> classeList;
  List <Responsable> responsableList;

  Etablissement(this.idEtablissement, this.nom, this.adresse, this.boitier,
      this.classeList, this.responsableList);

  Map<String, dynamic> toJson() =>
      _$EtablissementToJson(this);

  static Etablissement fromJson(Map<String, dynamic> map) =>
      _$EtablissementFromJson(map);
}