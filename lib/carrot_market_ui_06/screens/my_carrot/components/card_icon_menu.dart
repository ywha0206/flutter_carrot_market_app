import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_06/models/icon_menu.dart';

import '../../../theme.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;
  const CardIconMenu({required this.iconMenuList, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Column(
          children: List.generate(
            iconMenuList.length,
            (index) {
              return _buildListCard(iconMenuList[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildListCard(IconMenu iconMenu) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Icon(
            iconMenu.iconData,
            size: 18.0,
          ),
          SizedBox(width: 16.0),
          Text(
            iconMenu.title,
            style: textTheme().bodyLarge,
          )
        ],
      ),
    );
  }
}
