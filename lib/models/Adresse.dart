import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Adresse.g.dart';

@JsonSerializable(explicitToJson: true)
class Adresse{
  String ville;
  String rue;
  String telephone;

  Adresse(this.ville, this.rue, this.telephone);

  Map<String, dynamic> toJson() =>
      _$AdresseToJson(this);

  static Adresse fromJson(Map<String, dynamic> map) =>
      _$AdresseFromJson(map);
}