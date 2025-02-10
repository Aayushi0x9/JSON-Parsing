import 'package:json_parsing/headers.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CommentsController lisnable =
        Provider.of<CommentsController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments Data'),
      ),
      body: lisnable.commentsData.isEmpty
          ? const CircularProgressIndicator()
          : ListView.separated(
              itemBuilder: (context, index) {
                final comments = lisnable.commentsData[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${comments['id']}'),
                  ),
                  title: Text('name : ${comments['name']}'),
                  subtitle: Column(
                    children: [
                      Text('email : ${comments['email']}'),
                      Text('${comments['body']}'),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: lisnable.commentsData.length),
      floatingActionButton: FloatingActionButton(onPressed: () {
        lisnable.getCommentsData();
      }),
    );
  }
}
