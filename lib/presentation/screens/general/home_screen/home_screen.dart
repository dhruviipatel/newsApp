part of 'home_screen_imports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pgController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 190.h,
                width: double.infinity,
                child: PageView.builder(
                    controller: pgController,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Container(
                          height: 190.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              image: const DecorationImage(
                                  image: AssetImage(MyAssets.netflixbg),
                                  fit: BoxFit.cover)),
                        ),
                      );
                    }),
              ),
              10.h.heightBox,
              SmoothPageIndicator(
                  controller: pgController,
                  count: 3,
                  effect: const WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      dotColor: Color(0xffD9D9D9),
                      activeDotColor: MyColors.primaryColor),
                  onDotClicked: (index) {}),
              20.h.heightBox,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Latest Posts'
                        .text
                        .size(11.sp)
                        .fontWeight(FontWeight.w400)
                        .make(),
                    'See All'
                        .text
                        .size(11.sp)
                        .fontWeight(FontWeight.w400)
                        .make(),
                  ],
                ),
              ),
              10.h.heightBox,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView.separated(
                    itemCount: 20,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => SizedBox(
                          height: 20.h,
                        ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomeDetailsScreen()));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              MyAssets.netflixbg,
                              height: 130.h,
                              width: 200.w,
                              fit: BoxFit.cover,
                            ).cornerRadius(20.r),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Wrap(
                                      children: [
                                        'Netflix will chanrge money for password sharing'
                                            .text
                                            .size(12.sp)
                                            .semiBold
                                            .make()
                                      ],
                                    ),
                                    6.h.heightBox,
                                    Row(
                                      children: [
                                        Icon(
                                          FeatherIcons.clock,
                                          size: 15.sp,
                                          color: Colors.grey,
                                        ),
                                        5.w.widthBox,
                                        '16 minutes ago'
                                            .text
                                            .color(Colors.grey)
                                            .size(11.sp)
                                            .make(),
                                      ],
                                    ),
                                    6.h.heightBox,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        "129 viws"
                                            .text
                                            .color(Colors.grey)
                                            .size(11.sp)
                                            .make(),
                                        Icon(
                                          FeatherIcons.bookmark,
                                          size: 15.sp,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
