import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            color: Colors.black12,
          ),
        ),
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
            return ProductItem(product: productList[index]);
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
