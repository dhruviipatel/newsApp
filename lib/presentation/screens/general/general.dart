part of 'general_imports.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  int visit = 0;
  List pages = [
    const HomeScreen(),
    const CategoriesScreen(),
    const AddPostScreen(),
    const TagsScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: const [
          TabItem(icon: FeatherIcons.home),
          TabItem(icon: FeatherIcons.tag),
          TabItem(icon: FeatherIcons.plus),
          TabItem(icon: FeatherIcons.hash),
          TabItem(icon: FeatherIcons.user),
        ],
        iconSize: 22,
        backgroundColor: Colors.white,
        color: MyColors.primaryColor.withOpacity(0.3),
        colorSelected: MyColors.primaryColor,
        indexSelected: visit,
        top: 5,
        bottom: 0,
        highlightStyle: const HighlightStyle(
            sizeLarge: false, isHexagon: false, elevation: 2),
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
