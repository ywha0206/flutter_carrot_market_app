import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../components/appbar_preferred_size.dart';
import 'components/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        bottom: appBarBottomLine(),
        title: Row(
          children: [
            Text('좌동'),
            const SizedBox(width: 4.0),
            Icon(
              Icons.keyboard_arrow_down,
              size: 25.0,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.list)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ProductItem(product: productList2[index]);
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 1.0,
              color: Colors.black12,
              indent: 10.0,
              endIndent: 10.0,
            );
          },
          itemCount: productList.length),
      // body: ListView(children: [ProductItem(product: productList[0])]),
    );
  }
}
