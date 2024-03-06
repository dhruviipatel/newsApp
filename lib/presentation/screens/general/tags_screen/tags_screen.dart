part of 'tags_screen_imports.dart';

class TagsScreen extends StatefulWidget {
  const TagsScreen({super.key});

  @override
  State<TagsScreen> createState() => _TagsScreenState();
}

class _TagsScreenState extends State<TagsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text(
          'Tags',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddTagScreen()));
              },
              icon: const Icon(Icons.add, color: Colors.white))
        ],
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              child: Container(
                  height: 50,
                  decoration: const BoxDecoration(color: Colors.white),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('${index + 1}'),
                            40.w.widthBox,
                            const Text('Snapchat'),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const UpdateTagScreen()));
                                },
                                icon: Icon(
                                  Icons.edit,
                                  size: 25.sp,
                                  color: Colors.green,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete,
                                  size: 25.sp,
                                  color: Colors.red,
                                ))
                          ],
                        )
                      ],
                    ),
                  )

                  // ListTile(
                  //     title: const Text('Snapchat'),
                  //     leading: Text('${index + 1}'),
                  //     trailing: const Icon(Icons.edit))
                  ),
            );
          }),
    );
  }
}
