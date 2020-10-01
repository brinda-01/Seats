import 'package:Seats/models/Etablissement.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Responsable.g.dart';

@JsonSerializable(explicitToJson: true)

class Responsable{
  String nom;
  String prenom;
  String telephone;
  Etablissement etablissement;

  Responsable(this.nom, this.prenom, this.telephone, this.etablissement);

  Map<String, dynamic> toJson() =>
      _$ResponsableToJson(this);

  static Responsable fromJson(Map<String, dynamic> map) =>
      _$ResponsableFromJson(map);
}