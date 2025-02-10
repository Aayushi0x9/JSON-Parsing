import 'package:json_parsing/headers.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UsersController lisnable =
        Provider.of<UsersController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users Data'),
      ),
      body: lisnable.usersData.isEmpty
          ? const CircularProgressIndicator()
          : ListView.separated(
              itemBuilder: (context, index) {
                final comments = lisnable.usersData[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${comments['id']}'),
                  ),
                  title: Text('${comments['name']}'),
                  subtitle: Column(
                    children: [
                      Text('${comments['username']}'),
                      Text(
                        '${comments['email']}',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text('PHONE :=> ${comments['phone']}'),
                      Text('WEBSITE :=> ${comments['website']}'),
                      Text('STREET :=> ${comments['address']['street']} '),
                      Text('SUITS :=> ${comments['address']['suite']}'),
                      Text('CITY :=> ${comments['address']['city']}'),
                      Text('ZIPCODE :=> ${comments['address']['zipcode']}'),
                      Text(
                          'GEO - LAT :=> ${comments['address']['geo']['lat']}'),
                      Text(
                          'GEO - LONG :=> ${comments['address']['geo']['lng']}'),
                      Text('COMPANY NAME :=> ${comments['company']['name']}'),
                      Text(
                          'COMPANY CATCHPHRASE :=> ${comments['company']['catchPhrase']}'),
                      Text('COMPANY BS :=> ${comments['company']['bs']}'),
                      Text(
                          'ADDRESS :=> ${comments['address']['street']},${comments['address']['suite']},${comments['address']['city']},${comments['address']['zipcode']},${comments['address']['geo']['lat']},${comments['address']['geo']['lng']}'),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: lisnable.usersData.length),
      floatingActionButton: FloatingActionButton(onPressed: () {
        lisnable.getUsersData();
      }),
    );
  }
}
