import 'package:Seats/models/Eleve.dart';
import 'package:json_annotation/json_annotation.dart';

part 'LoginViewModel.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginViewModel{
  String username;
  String password;

  LoginViewModel(this.username, this.password);

  static Map<String, dynamic> converttoJson(LoginViewModel loginViewModel) =>
      _$LoginViewModelToJson(loginViewModel);

  static LoginViewModel convertFromJson(Map<String, dynamic>map) =>
      _$LoginViewModelFromJson(map);
}