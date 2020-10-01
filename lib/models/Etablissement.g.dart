// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Etablissement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Etablissement _$EtablissementFromJson(Map<String, dynamic> json) {
  return Etablissement(
    json['idEtablissement'] as int,
    json['nom'] as String,
    json['adresse'] == null
        ? null
        : Adresse.fromJson(json['adresse'] as Map<String, dynamic>),
    json['boitier'] == null
        ? null
        : Boitier.fromJson(json['boitier'] as Map<String, dynamic>),
    (json['classeList'] as List)
        ?.map((e) =>
            e == null ? null : Classe.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['responsableList'] as List)
        ?.map((e) =>
            e == null ? null : Responsable.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EtablissementToJson(Etablissement instance) =>
    <String, dynamic>{
      'idEtablissement': instance.idEtablissement,
      'nom': instance.nom,
      'adresse': instance.adresse?.toJson(),
      'boitier': instance.boitier?.toJson(),
      'classeList': instance.classeList?.map((e) => e?.toJson())?.toList(),
      'responsableList':
          instance.responsableList?.map((e) => e?.toJson())?.toList(),
    };
