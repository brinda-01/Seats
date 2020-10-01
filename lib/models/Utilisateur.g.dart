// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Utilisateur.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Utilisateur _$UtilisateurFromJson(Map<String, dynamic> json) {
  return Utilisateur(
    json['idUtilisateur'] as int,
    json['email'] as String,
    json['password'] as String,
    json['role'] as String,
    json['dateCreation'] == null
        ? null
        : DateTime.parse(json['dateCreation'] as String),
    json['isActive'] as bool,
    json['sexe'] as String,
  );
}

Map<String, dynamic> _$UtilisateurToJson(Utilisateur instance) =>
    <String, dynamic>{
      'idUtilisateur': instance.idUtilisateur,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'dateCreation': instance.dateCreation?.toIso8601String(),
      'isActive': instance.isActive,
      'sexe': instance.sexe,
    };
