import 'package:flutter/material.dart';
import 'package:sneaker_shop_ecommerance_app/models/shoe.dart';

class ShoeTile extends StatefulWidget {
  final Shoe shoe;
  final void Function()? onTap;

  ShoeTile({Key? key, required this.shoe, required this.onTap}) : super(key: key);

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      height: 320,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              widget.shoe.imagePath,
              height: 320,
              width: 280,
            ),
          ),

          // price + details
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Shoe name
                      Text(
                        widget.shoe.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),

                      // price
                      Text(
                        widget.shoe.price + ' \₺',
                        style: const TextStyle(
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),

                  // plus button
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // add to cart
        ],
      ),
    );
  }
}
