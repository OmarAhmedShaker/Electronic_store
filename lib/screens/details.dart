
import 'package:flutter/material.dart';
import 'package:app_store/constants.dart';
import 'package:app_store/models/products.dart';
import 'package:app_store/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppbar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
