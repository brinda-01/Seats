
import 'package:Seats/widgets/Studentlist.dart';

class UserData{
  static Future<String> getIdUtilisateur() async {
    return await Studentlist.storage.read(key: "idUtilisateur");
  }
}

