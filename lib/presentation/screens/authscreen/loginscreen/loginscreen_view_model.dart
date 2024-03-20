part of 'loginscreen_imports.dart';

class LoginscreenViewModel {
  final Repository repository;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  LoginscreenViewModel({required this.repository});

  login(context) async {
    var logindata = await repository.authRepo
        .loginUser(emailController.text, passController.text, context);

    if (logindata.accessToken != null) {
      print(logindata);
      // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //     builder: (context) => const CategorySelectionScreen()));
    }
    print(logindata);
  }
}
