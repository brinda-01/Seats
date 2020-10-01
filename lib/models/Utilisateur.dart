
import 'package:json_annotation/json_annotation.dart';

part 'Utilisateur.g.dart';

@JsonSerializable(explicitToJson: true)
class Utilisateur{
  int idUtilisateur;
  String email;
  String password;
  String role;
  DateTime dateCreation;
  bool isActive;
  String sexe;

  Utilisateur(this.idUtilisateur, this.email, this.password, this.role,
      this.dateCreation, this.isActive, this.sexe);

  Map<String, dynamic> toJson() =>
      _$UtilisateurToJson(this);

  static Utilisateur fromJson(Map<String, dynamic> map) =>
      _$UtilisateurFromJson(map);
}