// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Eleve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Eleve _$EleveFromJson(Map<String, dynamic> json) {
  return Eleve(
    json['idEmpreinte'] as int,
    json['MatriculeEleve'] as String,
    json['nom'] as String,
    json['prenom'] as String,
    (json['listParent'] as List)
        ?.map((e) =>
            e == null ? null : Parent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )..presence = json['presence'] == null
      ? null
      : Presence.fromJson(json['presence'] as Map<String, dynamic>);
}

Map<String, dynamic> _$EleveToJson(Eleve instance) => <String, dynamic>{
      'idEmpreinte': instance.idEmpreinte,
      'MatriculeEleve': instance.MatriculeEleve,
      'nom': instance.nom,
      'prenom': instance.prenom,
      'presence': instance.presence?.toJson(),
      'listParent': instance.listParent?.map((e) => e?.toJson())?.toList(),
    };
