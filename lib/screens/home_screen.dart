

import 'package:flutter/material.dart';
import 'package:app_store/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('مرحبا بكم في متجر الالكترونيات'),
      centerTitle: false,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}
