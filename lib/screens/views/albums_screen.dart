import 'package:json_parsing/headers.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AlbumsController lisnable =
        Provider.of<AlbumsController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums Data'),
      ),
      body: lisnable.albumsData.isEmpty
          ? const CircularProgressIndicator()
          : ListView.separated(
              itemBuilder: (context, index) {
                final albums = lisnable.albumsData[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${albums['id']}'),
                  ),
                  title: Text('${albums['title']}'),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: lisnable.albumsData.length),
      floatingActionButton: FloatingActionButton(onPressed: () {
        lisnable.getAlbumstData();
      }),
    );
  }
}
