
import 'package:Seats/models/Boitier.dart';
import 'package:Seats/models/Eleve.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Presence.g.dart';

@JsonSerializable(explicitToJson: true)

class Presence {
  String idPresence;
  DateTime date;
  Eleve eleve;
  Boitier boitier;

  Presence(this.idPresence, this.date, this.eleve, this.boitier);

  Map<String, dynamic> toJson() =>
      _$PresenceToJson(this);

  static Presence fromJson(Map<String, dynamic> map) =>
      _$PresenceFromJson(map);
}