part of 'update_category_screen_imports.dart';

class UpdateCategoryScreen extends StatefulWidget {
  const UpdateCategoryScreen({super.key});

  @override
  State<UpdateCategoryScreen> createState() => _UpdateCategoryScreenState();
}

class _UpdateCategoryScreenState extends State<UpdateCategoryScreen> {
  var titleController = TextEditingController(text: "Snapchat");
  var slugController = TextEditingController(text: '123');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "Update Category",
            style: TextStyle(color: Colors.white),
          )),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            greyFormFields(title: 'Title', controller: titleController),
            20.h.heightBox,
            greyFormFields(title: 'Slug', controller: slugController),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 150.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white70, borderRadius: BorderRadius.circular(1)),
        child: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: commonButton(context, onpress: () {}, buttontext: "Update"),
        )),
      ),
    );
  }
}
