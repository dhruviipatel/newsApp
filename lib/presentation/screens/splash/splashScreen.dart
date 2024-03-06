part of "splash_imports.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const OnboardScreen()));
    });
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(child: FadedScaleAnimation(child: appLogo())),
    );
  }
}
