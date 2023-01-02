import 'package:flutter/material.dart';
import 'package:app_store/constants.dart';
import 'package:app_store/models/products.dart';
import 'package:app_store/widgets/details/color_dot.dart';
import 'package:app_store/widgets/details/product_image.dart';


class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //عرض و ارتفاع الجوال
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ProductImage(
                    size: size,
                    image: product.image,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(
                        fillColor: kTextLightColor,
                        isSelected: true,
                      ),
                      ColorDot(
                        fillColor: Colors.red,
                        isSelected: false,
                      ),
                      ColorDot(
                        fillColor: Colors.blue,
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  'السعر\$${product.price}',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
            child: Text(
              product.description,
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
          )
        ],
      ),
    );
  }
}