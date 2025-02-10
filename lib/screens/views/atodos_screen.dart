import 'package:json_parsing/headers.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TodosController lisnable =
        Provider.of<TodosController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos Data'),
      ),
      body: lisnable.todosData.isEmpty
          ? const CircularProgressIndicator()
          : ListView.separated(
              itemBuilder: (context, index) {
                final todos = lisnable.todosData[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${todos['id']}'),
                  ),
                  title: Text('${todos['title']}'),
                  subtitle: Column(
                    children: [
                      Text('COMPLETED :=> ${todos['completed']}'),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: lisnable.todosData.length),
      floatingActionButton: FloatingActionButton(onPressed: () {
        lisnable.getTodosData();
      }),
    );
  }
}
