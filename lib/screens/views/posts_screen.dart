import 'package:json_parsing/headers.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PostsController lisnable =
        Provider.of<PostsController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Data'),
      ),
      body: lisnable.postData.isEmpty
          ? CircularProgressIndicator()
          : ListView.separated(
              itemBuilder: (context, index) {
                final post = lisnable.postData[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${post['id']}'),
                  ),
                  title: Text('${post['title']}'),
                  subtitle: Text('${post['body']}'),
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: lisnable.postData.length),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Provider.of<PostsController>(context, listen: false).getPostData();
      }),
    );
  }
}
