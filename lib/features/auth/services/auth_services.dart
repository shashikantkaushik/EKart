import 'package:cart/constants/global_variables.dart';
import 'package:cart/models/user.dart';
import 'package:http/http.dart' as http;
class AuthServices {
  //sign up user

  void SignupUser({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '',
          cart: '');
      http.Response res=await  http.post(Uri.parse('$uri/api/signup'),
      body: user.toJson(),
      headers: <String, String>{
        'Content-Type':'application/json; charset=UTF-8',
      });
      print(res.body);
    } catch (e) {

    }
  }
}
