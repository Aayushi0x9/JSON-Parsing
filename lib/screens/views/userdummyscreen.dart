import 'package:json_parsing/controller/dummyjsoncontroller.dart';
import 'package:json_parsing/headers.dart';

class UsersDummyScreen extends StatelessWidget {
  const UsersDummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DummyJsonController lisnable =
        Provider.of<DummyJsonController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users Dummy Data'),
      ),
      body: lisnable.userDummy.isEmpty
          ? const CircularProgressIndicator()
          : ListView.separated(
              itemBuilder: (context, index) {
                final userDummy = lisnable.userDummy[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${userDummy.id}'),
                  ),
                  title: Text('${userDummy.firstName} ${userDummy.lastName}'),
                  subtitle: Column(
                    children: [
                      Text('${userDummy.username}'),
                      Text(
                        '${userDummy.email}',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text('${userDummy.company}'),
                      Text('${userDummy.address}'),
                      Text('${userDummy.macAddress} '),
                      Text('${userDummy.maidenName}'),
                      Text('${userDummy.phone}'),
                      Text('${userDummy.height}'),
                      Text('${userDummy.age}'),
                      Text('${userDummy.bank}'),
                      Text('${userDummy.birthDate}'),
                      Text('${userDummy.bloodGroup}'),
                      Text('${userDummy.crypto?.network}'),
                      Text('${userDummy.crypto?.coin}'),
                      Text('${userDummy.ein}'),
                      Text('${userDummy.gender}'),
                      Text('${userDummy.hair?.color}'),
                      Text('${userDummy.eyeColor}'),
                      Text('${userDummy.hair?.type}'),
                      Text('${userDummy.ip}'),
                      Text('${userDummy.role}'),
                      Text('${userDummy.ssn}'),
                      Text('${userDummy.university}'),
                      Text('${userDummy.userAgent}'),
                      Text('${userDummy.weight}'),
                      Image.network('${userDummy.image}'),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: lisnable.userDummy.length),
      floatingActionButton: FloatingActionButton(onPressed: () {
        lisnable.userDummyJson();
      }),
    );
  }
}
