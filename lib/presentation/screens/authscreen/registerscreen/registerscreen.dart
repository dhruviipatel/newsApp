part of 'registerscreen_imports.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      35.h.heightBox,
                      'Sign Up'
                          .text
                          .size(18.sp)
                          .fontWeight(FontWeight.w700)
                          .color(MyColors.primaryColor)
                          .makeCentered(),
                      30.h.heightBox,
                      formFields(
                          title: 'Email',
                          icondata: Icons.email_outlined,
                          controller: emailController),
                      20.h.heightBox,
                      formFields(
                          title: 'Password',
                          icondata: Icons.lock_outline,
                          controller: passController,
                          ispassword: true),
                      20.h.heightBox,
                      formFields(
                          ispassword: true,
                          title: 'Confirm Password',
                          icondata: Icons.lock_outline,
                          controller: emailController),
                      20.h.heightBox,
                      SizedBox(
                          width: 200.w,
                          child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
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
                      30.h.heightBox,
                      commonButton(context,
                          onpress: () {}, buttontext: 'Sign up'),
                      20.h.heightBox,
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Loginscreen()));
                        },
                        child: "Already have an account? "
                            .richText
                            .size(14)
                            .color(MyColors.primaryColor)
                            .semiBold
                            .withTextSpanChildren([
                          const TextSpan(
                              text: "Login",
                              style: TextStyle(fontWeight: FontWeight.w700))
                        ]).makeCentered(),
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
