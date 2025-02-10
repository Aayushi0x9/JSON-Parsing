import 'package:json_parsing/headers.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PhotosController lisnable =
        Provider.of<PhotosController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photos Data'),
      ),
      body: lisnable.photosData.isEmpty
          ? const CircularProgressIndicator()
          : ListView.separated(
              itemBuilder: (context, index) {
                final photos = lisnable.photosData[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${photos['id']}'),
                  ),
                  title: Text('${photos['title']}'),
                  subtitle: Column(
                    children: [
                      const Text('URL :=>'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(child: Image.network('${photos['url']}')),
                          Expanded(
                              child:
                                  Image.network('${photos['thumbnailUrl']}')),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: lisnable.photosData.length),
      floatingActionButton: FloatingActionButton(onPressed: () {
        lisnable.getPhotosData();
      }),
    );
  }
}
