import 'package:cart/constants/global_variables.dart';
import 'package:cart/models/user.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:cart/constants/error_handling.dart';
import '../../../constants/utils.dart';
class AuthServices {
  // sign up user
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      print('done');
      User user = User(
        id: '',
        name: name,
        password: password,
        email: email,
        address: '',
        type: '',
        token: '',
        // cart: [],
      );
      print('done2');
      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print(res.body);
      print('done3');

      httpErrorHandler(
        response: res,
        context: context,
        onSuccess: () {
          print('hello');
          showSnackBar(
            context,
            'Account created! Login with the same credentials!',
          );
        },
      );
      print('done4');
    } catch (e) {
      print('done5');
      showSnackBar(context, e.toString());
    }
  }
}
