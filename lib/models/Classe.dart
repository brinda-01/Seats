import 'package:Seats/models/Eleve.dart';
import 'package:Seats/models/Etablissement.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Classe.g.dart';

@JsonSerializable(explicitToJson: true)
class Classe{
  int idClasse;
  String libele;
  Etablissement etablissement;
  List <Eleve> eleveList;

  Classe(this.idClasse, this.libele, this.etablissement, this.eleveList);

  Map<String, dynamic> toJson() =>
      _$ClasseToJson(this);

  static Classe fromJson(Map<String, dynamic> map) =>
      _$ClasseFromJson(map);
}