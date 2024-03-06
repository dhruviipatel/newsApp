part of 'category_imports.dart';

class CategorySelectionScreen extends StatelessWidget {
  const CategorySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.h.heightBox,
              Image.asset(
                'assets/images/logo_orange.png',
                height: 42.h,
                width: 139.h,
              ).centered(),
              50.h.heightBox,
              "Please select categories"
                  .text
                  .size(16.sp)
                  .fontWeight(FontWeight.w600)
                  .color(MyColors.primaryColor)
                  .make(),
              "Note : You can customize your categories \nfrom feed too"
                  .text
                  .color(const Color(0xff777777))
                  .size(11)
                  .fontWeight(FontWeight.w500)
                  .make(),
              50.h.heightBox,
              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  categoryItem(text: 'Ancient'),
                  categoryItem(text: 'Nature'),
                  categoryItem(text: 'Tech'),
                  categoryItemLong(text: 'Artificial Inteligence'),
                  categoryItem(text: 'Science'),
                  categoryItem(text: 'Ancient'),
                  categoryItem(text: 'Nature'),
                  categoryItem(text: 'Tech'),
                ],
              ),
              const Spacer(),
              commonButton(context, onpress: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const General()));
              }, buttontext: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
