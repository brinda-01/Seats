import 'package:Seats/models/Presence.dart';

import 'Etablissement.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Boitier.g.dart';

@JsonSerializable(explicitToJson: true)
class Boitier{
  String noSerie;
  String moodel;
  String typBoitier;
  Etablissement etablissement;
  Presence presences;

  Boitier(this.noSerie, this.moodel, this.typBoitier, this.etablissement,
      this.presences);

  Map<String, dynamic> toJson() =>
      _$BoitierToJson(this);

  static Boitier fromJson(Map<String, dynamic> map) =>
      _$BoitierFromJson(map);
}