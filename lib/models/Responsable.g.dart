// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Responsable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Responsable _$ResponsableFromJson(Map<String, dynamic> json) {
  return Responsable(
    json['nom'] as String,
    json['prenom'] as String,
    json['telephone'] as String,
    json['etablissement'] == null
        ? null
        : Etablissement.fromJson(json['etablissement'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResponsableToJson(Responsable instance) =>
    <String, dynamic>{
      'nom': instance.nom,
      'prenom': instance.prenom,
      'telephone': instance.telephone,
      'etablissement': instance.etablissement?.toJson(),
    };
