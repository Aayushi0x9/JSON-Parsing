import 'package:json_parsing/headers.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Parsing'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.pushNamed(context, Globals.json_data[index]['route']);
          },
          title: Text(Globals.json_data[index]['title']),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        itemCount: Globals.json_data.length,
      ),
    );
  }
}
