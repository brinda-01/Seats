// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Boitier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Boitier _$BoitierFromJson(Map<String, dynamic> json) {
  return Boitier(
    json['noSerie'] as String,
    json['moodel'] as String,
    json['typBoitier'] as String,
    json['etablissement'] == null
        ? null
        : Etablissement.fromJson(json['etablissement'] as Map<String, dynamic>),
    json['presences'] == null
        ? null
        : Presence.fromJson(json['presences'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BoitierToJson(Boitier instance) => <String, dynamic>{
      'noSerie': instance.noSerie,
      'moodel': instance.moodel,
      'typBoitier': instance.typBoitier,
      'etablissement': instance.etablissement?.toJson(),
      'presences': instance.presences?.toJson(),
    };
