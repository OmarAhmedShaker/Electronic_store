import 'package:flutter/material.dart';
import 'package:app_store/constants.dart';

class ProductImage extends StatelessWidget {
  final Size size;
  final String image;
  ProductImage({required this.size, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      //color: Colors.black,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(
            image,
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
