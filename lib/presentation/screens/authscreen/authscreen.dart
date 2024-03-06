part of 'authscreen_imports.dart';

@RoutePage()
class Authscreen extends StatefulWidget {
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyAssets.authbg), fit: BoxFit.cover)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appLogo(),
                  const Spacer(),
                  "Explore the world,\nBillions of Thoughts."
                      .text
                      .size(28.sp)
                      .color(Colors.white)
                      .fontWeight(FontWeight.w700)
                      .make(),
                  20.h.heightBox,
                  commonButton(context, onpress: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const Loginscreen()));
                  }, buttontext: 'Login'),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 44.h),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8.r)),
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const Registerscreen()));
                    },
                    child: 'Register'
                        .text
                        .color(Colors.white)
                        .size(14.sp)
                        .fontWeight(FontWeight.w600)
                        .make(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
