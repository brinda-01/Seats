// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Presence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Presence _$PresenceFromJson(Map<String, dynamic> json) {
  return Presence(
    json['idPresence'] as String,
    json['date'] == null ? null : DateTime.parse(json['date'] as String),
    json['eleve'] == null
        ? null
        : Eleve.fromJson(json['eleve'] as Map<String, dynamic>),
    json['boitier'] == null
        ? null
        : Boitier.fromJson(json['boitier'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PresenceToJson(Presence instance) => <String, dynamic>{
      'idPresence': instance.idPresence,
      'date': instance.date?.toIso8601String(),
      'eleve': instance.eleve?.toJson(),
      'boitier': instance.boitier?.toJson(),
    };
