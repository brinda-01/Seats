// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return Parent(
    json['prenom'] as String,
    json['nom'] as String,
    json['telephone'] as String,
    (json['eleveList'] as List)
        ?.map(
            (e) => e == null ? null : Eleve.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..idUtilisateur = json['idUtilisateur'] as int
    ..email = json['email'] as String
    ..password = json['password'] as String
    ..role = json['role'] as String
    ..dateCreation = json['dateCreation'] == null
        ? null
        : DateTime.parse(json['dateCreation'] as String)
    ..isActive = json['isActive'] as bool
    ..sexe = json['sexe'] as String;
}

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'idUtilisateur': instance.idUtilisateur,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'dateCreation': instance.dateCreation?.toIso8601String(),
      'isActive': instance.isActive,
      'sexe': instance.sexe,
      'nom': instance.nom,
      'prenom': instance.prenom,
      'telephone': instance.telephone,
      'eleveList': instance.eleveList?.map((e) => e?.toJson())?.toList(),
    };
