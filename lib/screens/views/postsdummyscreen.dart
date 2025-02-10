import 'package:json_parsing/controller/dummyjsoncontroller.dart';
import 'package:json_parsing/headers.dart';

class PostsDummyScreen extends StatelessWidget {
  const PostsDummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DummyJsonController lisnable =
        Provider.of<DummyJsonController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Dummy Data'),
      ),
      body: lisnable.postsDummy.isEmpty
          ? CircularProgressIndicator()
          : ListView.separated(
              itemBuilder: (context, index) {
                final postdummy = lisnable.postsDummy[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${postdummy.id}'),
                  ),
                  title: Text('${postdummy.title}'),
                  subtitle: Column(
                    children: [
                      Text('${postdummy.body}'),
                      Text(
                          'Tags : ${postdummy.tags?[0] ?? ''},${postdummy.tags?[1] ?? ''}'),
                      Text(
                          'Like : ${postdummy.reactions?.dislikes} && DisLike : ${postdummy.reactions?.dislikes}'),
                      Text('${postdummy.views}'),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: lisnable.postsDummy.length),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Provider.of<DummyJsonController>(context, listen: false)
            .postsDummyJson();
      }),
    );
  }
}
