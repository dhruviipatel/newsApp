part of 'add_post_screen_imports.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: 'Add Posts'.text.white.ellipsis.make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    'assets/images/Imageplaceholder.jpg',
                    width: MediaQuery.sizeOf(context).width,
                    height: 250.h,
                    fit: BoxFit.cover,
                  ).cornerRadius(10.r),
                  Positioned(
                    bottom: 10.h,
                    right: 10.w,
                    child: const Icon(
                      Icons.camera_alt,
                      color: MyColors.primaryColor,
                    ),
                  )
                ],
              ),
              20.h.heightBox,
              VxTextField(
                borderColor: MyColors.primaryColor,
                borderType: VxTextFieldBorderType.roundLine,
                borderRadius: 10.r,
                fillColor: Colors.transparent,
                hint: "Title",
              ),
              20.h.heightBox,
              VxTextField(
                borderColor: MyColors.primaryColor,
                borderType: VxTextFieldBorderType.roundLine,
                borderRadius: 10.r,
                fillColor: Colors.transparent,
                hint: "Slug",
              ),
              20.h.heightBox,
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Title'.text.make(),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
              20.h.heightBox,
              Container(
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Categories'.text.make(),
                      const Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
              20.h.heightBox,
              QuillToolbar.simple(
                configurations: QuillSimpleToolbarConfigurations(
                  toolbarSize: 100,
                  controller: _controller,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('de'),
                  ),
                ),
              ),
              QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  maxHeight: 200.h,
                  controller: _controller,
                  readOnly: false,
                  sharedConfigurations: const QuillSharedConfigurations(
                    locale: Locale('de'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
