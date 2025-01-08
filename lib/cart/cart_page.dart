import 'package:eshop/cart/cart_item_list.dart';
import 'package:eshop/cart/product_details.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  final CartItemList cartItemList = CartItemList();
//create a list of cartitems
  // final List<Map<String, dynamic>> cartitems = List.generate(50, (index) {
  //   return {
  //     'name': 'Product Name',
  //     'price': '\$${(index + 1) * 10}',
  //     'description': 'Product Description',
  //     'image': 'https://picsum.photos/200/300?random=${index + 1}',
  //     'rating': "${index + 1}", // Rating between 0 to 5 stars
  //   };
  // });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: cartitems.isNotEmpty
          ? ListView.builder(
              itemCount: cartitems.length,
              itemBuilder: (context, index) {
                final item = cartitems[index];
                return SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailsPage(
                              product: item,
                            ),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(item['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      tileColor: Colors.indigoAccent,
                      title: Text(item['name']),
                      subtitle: Text(item['price']),
                      trailing: ListenableBuilder(
                          listenable: cartItemList,
                          builder: (context, snapshot) {
                            return IconButton(
                                onPressed: () {
                                  cartItemList.removefromcart(index);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 22,
                                ));
                          }),
                    ),
                  ),
                );
              },
            )
          : const Center(
              child: Text('No items in cart'),
            ),
    );
  }
}
