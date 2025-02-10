import 'package:json_parsing/controller/dummyjsoncontroller.dart';
import 'package:json_parsing/headers.dart';

class CartsDummyScreen extends StatelessWidget {
  const CartsDummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DummyJsonController lisnable =
        Provider.of<DummyJsonController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Dummy Data'),
      ),
      body: lisnable.cartsDummy.isEmpty
          ? const CircularProgressIndicator()
          : ListView.separated(
              itemBuilder: (context, index) {
                final cartDummy = lisnable.cartsDummy[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${cartDummy.id}'),
                  ),
                  title: Text('${cartDummy.total}'),
                  subtitle: Column(
                    children: [
                      Text('${cartDummy.products}'),
                      Text('${cartDummy.totalProducts}'),
                      Text('${cartDummy.totalQuantity}'),
                      Text('${cartDummy.discountedTotal}'),
                      ...cartDummy.products!
                          .map(
                            (e) => Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              child: Column(
                                children: [
                                  Text('${e.title}'),
                                  Text('${e.total} , ${e.discountedTotal}'),
                                  Text('${e.id} , ${e.price}'),
                                  Image.network('${e.thumbnail}'),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: lisnable.cartsDummy.length),
      floatingActionButton: FloatingActionButton(onPressed: () {
        lisnable.cartsDummyJson();
      }),
    );
  }
}
