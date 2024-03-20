import 'package:newsapp/data/data_sources/remote/api_client.dart';
import 'package:newsapp/data/data_sources/remote/api_endpoint_urls.dart';
import 'package:newsapp/presentation/screens/authscreen/loginscreen/loginscreen_model.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthRepo extends ApiClient {
  AuthRepo();

  Future<LoginModel> loginUser(String email, String password, context) async {
    Map body = {"email": email, "password": password};
    try {
      final response =
          await postRequest(path: ApiEndpointUrls.login, body: body);
      if (response.statusCode == 200) {
        final responseData = response.data;
        print(responseData);

        final user = LoginModel.fromJson(responseData);
        return user;
      } else {
        return LoginModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      Vx.log(e);
    }
    return LoginModel();
  }
}
