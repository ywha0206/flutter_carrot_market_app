import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_06/models/icon_menu.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_06/screens/my_carrot/components/card_icon_menu.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_06/screens/my_carrot/components/my_carrot_header.dart';

import '../components/appbar_preferred_size.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyCarrot Page 메모리 호출 확인');
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        bottom: appBarBottomLine(),
        title: Text('나의 당근'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black87,
              ))
        ],
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu2),
          SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
