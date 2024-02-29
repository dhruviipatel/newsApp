part of 'onboard_widget_imports.dart';

class OnboardImage extends StatelessWidget {
  final String imagepath;
  final String description;
  const OnboardImage({
    super.key,
    required this.imagepath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagepath,
          height: 333.h,
          width: 333.w,
        ),
        description.text
            .size(15.sp)
            .align(TextAlign.center)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
