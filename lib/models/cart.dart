import 'package:flutter/material.dart';
import 'package:sneaker_shop_ecommerance_app/models/shoe.dart';

class Cart extends ChangeNotifier{

  // list of shoes dor sale
  List<Shoe> shoeShop = [
    Shoe(name: 'Trigol', price: '3600', imagePath: 'lib/images/trigol.jpg'),
    Shoe(name: 'Labre', price: '2400', imagePath: 'lib/images/labre.jpg'),
    Shoe(name: 'Seraton', price: '5000', imagePath: 'lib/images/seraton.jpg'),
    Shoe(name: 'Fisher', price: '1200', imagePath: 'lib/images/fisher.jpg'),
  ];

  // list of shoes in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

}
