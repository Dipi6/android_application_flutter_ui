import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';

Future parseToken() async {
  var jw = await FlutterSecureStorage().read(key: 'jwt');
  print("$jw token");
  var jwt = Jwt.parseJwt(jw!);
  // print(jwt['userId']);
  return jwt;
}
