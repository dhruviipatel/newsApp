part of 'loginscreen_imports.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  late LoginscreenViewModel loginscreenViewModel;

  @override
  void initState() {
    loginscreenViewModel =
        LoginscreenViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              appLogo(),
              100.h.heightBox,
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30.r)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      50.h.heightBox,
                      'Login'
                          .text
                          .size(18.sp)
                          .fontWeight(FontWeight.w700)
                          .color(MyColors.primaryColor)
                          .make(),
                      45.h.heightBox,
                      formFields(
                          title: 'Email',
                          icondata: Icons.email_outlined,
                          controller: loginscreenViewModel.emailController),
                      20.h.heightBox,
                      formFields(
                          title: 'Password',
                          icondata: Icons.lock_outline,
                          controller: loginscreenViewModel.passController,
                          ispassword: true),
                      20.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 200.w,
                              child: CheckboxListTile(
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  contentPadding: EdgeInsets.zero,
                                  side: const BorderSide(
                                      color: MyColors.primaryColor),
                                  visualDensity: VisualDensity.compact,
                                  tileColor: MyColors.primaryColor,
                                  title: "Remember me"
                                      .text
                                      .size(12)
                                      .color(MyColors.primaryColor)
                                      .fontWeight(FontWeight.w600)
                                      .make(),
                                  value: false,
                                  onChanged: (v) {})),
                          "Forgot Password"
                              .text
                              .size(12)
                              .color(MyColors.primaryColor)
                              .fontWeight(FontWeight.w600)
                              .make(),
                        ],
                      ),
                      30.h.heightBox,
                      commonButton(context, onpress: () {
                        loginscreenViewModel.login(context);
                      }, buttontext: 'Login'),
                      20.h.heightBox,
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Registerscreen()));
                        },
                        child: "Don't have an account? "
                            .richText
                            .size(14)
                            .color(MyColors.primaryColor)
                            .semiBold
                            .withTextSpanChildren([
                          const TextSpan(
                              text: "Sign Up",
                              style: TextStyle(fontWeight: FontWeight.w700))
                        ]).make(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
