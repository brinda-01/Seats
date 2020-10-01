// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Classe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Classe _$ClasseFromJson(Map<String, dynamic> json) {
  return Classe(
    json['idClasse'] as int,
    json['libele'] as String,
    json['etablissement'] == null
        ? null
        : Etablissement.fromJson(json['etablissement'] as Map<String, dynamic>),
    (json['eleveList'] as List)
        ?.map(
            (e) => e == null ? null : Eleve.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClasseToJson(Classe instance) => <String, dynamic>{
      'idClasse': instance.idClasse,
      'libele': instance.libele,
      'etablissement': instance.etablissement?.toJson(),
      'eleveList': instance.eleveList?.map((e) => e?.toJson())?.toList(),
    };
