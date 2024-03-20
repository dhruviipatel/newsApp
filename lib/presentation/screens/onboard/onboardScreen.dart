part of 'onboard_imports.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pgController = PageController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  MyAssets.orangelogo,
                  height: 42.h,
                  width: 139.w,
                ),
                60.h.heightBox,
                PageView(
                  controller: pgController,
                  children: const [
                    OnboardImage(
                      imagepath: MyAssets.onboard1,
                      description:
                          'Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community',
                    ),
                    OnboardImage(
                      imagepath: MyAssets.onboard2,
                      description:
                          'Customize your reading experience and join the conversation by creating an account.',
                    ),
                    OnboardImage(
                      imagepath: MyAssets.onboard3,
                      description:
                          'Explore a wide selection of categories, or use the search bar to find specific topics',
                    ),
                  ],
                ).expand(),
                60.h.heightBox,
                commonButton(context, onpress: () {
                  //TagsRepo().getAllTags();

                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Authscreen()));
                }, buttontext: 'Get Started'),
                60.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip"
                        .text
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .color(MyColors.primaryColor)
                        .make(),
                    SmoothPageIndicator(
                        controller: pgController,
                        count: 3,
                        effect: const WormEffect(
                            dotHeight: 8,
                            dotWidth: 8,
                            dotColor: Color(0xffD9D9D9),
                            activeDotColor: MyColors.primaryColor),
                        onDotClicked: (index) {}),
                    "Next"
                        .text
                        .size(16.sp)
                        .fontWeight(FontWeight.w700)
                        .color(MyColors.primaryColor)
                        .make(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
