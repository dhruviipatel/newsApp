part of "splash_imports.dart";

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      AutoRouter.of(context).push(const OnboardScreenRoute());
    });
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
          child: FadedScaleAnimation(
        child: Image.asset(
          MyAssets.whitelogo,
          height: 42.h,
          width: 139.w,
        ),
      )),
    );
  }
}
