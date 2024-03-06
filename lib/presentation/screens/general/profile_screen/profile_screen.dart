part of 'profile_screen_imports.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400.h,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: MyColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r))),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(MyAssets.authbg),
                  ),
                  10.h.heightBox,
                  'Dhruvi'.text.bold.xl.white.make(),
                  'admin@admin.com'.text.lg.white.make(),
                  20.h.heightBox,
                  'Dhruvi Patel is flutter developer who is more passinate about mobile technology. Her ambition toward technology is huge.'
                      .text
                      .white
                      .center
                      .make()
                      .pSymmetric(h: 20.h),
                  40.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        '0'.text.white.size(20.sp).bold.make(),
                        'Posts'.text.white.size(18.sp).semiBold.make(),
                      ]),
                      Column(children: [
                        '10'.text.white.size(20.sp).bold.make(),
                        'Following'.text.white.size(18.sp).semiBold.make(),
                      ]),
                      Column(children: [
                        '0'.text.white.size(20.sp).bold.make(),
                        'Follower'.text.white.size(18.sp).semiBold.make(),
                      ]),
                    ],
                  ).pSymmetric(h: 30.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.h.heightBox,
                  'My Posts'.text.xl.bold.make(),
                  20.h.heightBox,
                  GridView.builder(
                      itemCount: 20,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 230.h,
                          crossAxisSpacing: 20.w,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Image.asset(
                                MyAssets.netflixbg,
                                fit: BoxFit.cover,
                              ).cornerRadius(10.r),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Wrap(
                                      children: [
                                        'Netflix will charge money for password sharing'
                                            .text
                                            .make(),
                                      ],
                                    ),
                                  ),
                                  const Icon(Icons.more_vert)
                                ],
                              ).pSymmetric(v: 8.h)
                            ],
                          ),
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
