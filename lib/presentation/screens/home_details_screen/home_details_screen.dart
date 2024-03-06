part of 'home_details_screen_imports.dart';

class HomeDetailsScreen extends StatefulWidget {
  const HomeDetailsScreen({super.key});

  @override
  State<HomeDetailsScreen> createState() => _HomeDetailsScreenState();
}

class _HomeDetailsScreenState extends State<HomeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: 'Netflix will charge money for password sharing'
            .text
            .ellipsis
            .color(Colors.white)
            .make(),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                MyAssets.netflixbg,
                height: 280.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    10.h.heightBox,
                    'Netflix will charge money for password sharing'
                        .text
                        .bold
                        .xl2
                        .make(),
                    10.h.heightBox,
                    Row(
                      children: [
                        const Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                        '147 Views'.text.make(),
                        const Spacer(),
                        Icon(
                          FeatherIcons.thumbsUp,
                          color: Colors.green,
                          size: 20.sp,
                        ),
                        5.w.widthBox,
                        '1'.text.make(),
                        15.w.widthBox,
                        Icon(
                          FeatherIcons.thumbsDown,
                          color: Colors.red,
                          size: 20.sp,
                        ),
                        5.w.widthBox,
                        '1'.text.make(),
                      ],
                    ),
                    10.h.heightBox,
                    'We have all heard about how Netflix wants to start charging extra money if your share passwords with people other than your housemates, with the OTT platform testing this feature in a few regions. This is now expected to roll out ‘more broadly‘ by this March. Netflix’s Paid Password Sharing Coming to More People In a recent earnings report, Netflix revealed that its paid-sharing initiative will reach more people by the end of Q1 2023, which will provide you with an option to pay more if you want to continue sharing your passwords. So, you could either discontinue the practice or ask the people you share your Netflix password with to pay more. Netflix anticipates that this change might attract some ‘cancel reaction‘ in many markets but will serve its long-term goal of increased revenue. The report says, “We anticipate that this will result in a very different quarterly paid net adds pattern in 2023, with paid net, adds likely to be greater in Q2’23 than in Q1’23.“ However, it hasn’t revealed any pricing or other details about the feature. To recall, the paid password sharing was rolled out as a test in Chile, Costa Rica, and Peru last year. A new add-on option was provided to people there, requiring others to verify the login. It also introduced the ability to transfer profiles and manage logged-in devices, which could further curb the whole practice of sharing a Netflix account with multiple people. It remains to be seen how this new feature is received, considering an earlier report didn’t showcase a positive side to this. While there’s no harm in paying some money to share a Netflix account, leaving the habit of using it for free won’t go away easily. We are yet to see when this reaches India and will keep you posted whenever this happens. The earnings report also announced that Netflix’s CEO Reed Hastings is stepping down to hand over the reins to the co-CEO Ted Sarandos and COO Greg Peters. Netflix also reported a growth in Q2 2022 revenue, although, it was less than what was reported in Q4 2021. So, what do you think about the wider rollout of paid password sharing? Do you think this will be a motivation or a demotivation to leave Netflix altogether? Let us know your thoughts in the comments below.'
                        .text
                        .make()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
