import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_ecommerance_app/components/cart_item.dart';
import 'package:sneaker_shop_ecommerance_app/models/cart.dart';
import 'package:sneaker_shop_ecommerance_app/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Heading
                  const Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: value.getUserCart().length,
                      itemBuilder: (context, index) {
                        // get individual shoe
                        Shoe? individualShoe = value.getUserCart()[index];

                        // return the cart item
                        return CartItem(shoe: individualShoe);
                      },
                    ),
                  ),
                ],
              ),
        )
    );
  }
}