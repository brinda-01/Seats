// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Adresse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Adresse _$AdresseFromJson(Map<String, dynamic> json) {
  return Adresse(
    json['ville'] as String,
    json['rue'] as String,
    json['telephone'] as String,
  );
}

Map<String, dynamic> _$AdresseToJson(Adresse instance) => <String, dynamic>{
      'ville': instance.ville,
      'rue': instance.rue,
      'telephone': instance.telephone,
    };
