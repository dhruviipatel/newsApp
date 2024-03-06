part of 'add_category_screen_imports.dart';

class AddCategoryScreen extends StatefulWidget {
  const AddCategoryScreen({super.key});

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {
  var titleController = TextEditingController();
  var slugController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "Add New Category",
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
            color: Colors.white70, borderRadius: BorderRadius.circular(0)),
        child: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: commonButton(context, onpress: () {}, buttontext: "Add"),
        )),
      ),
    );
  }
}
