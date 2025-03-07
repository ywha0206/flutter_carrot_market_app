import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(height: 30.0),
            _buildProfileButton(),
            const SizedBox(height: 30.0),
            _buildRoundedButtons(),
            // round text button
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65.0,
              height: 65.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  'https://picsum.photos/200',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 23.0,
                height: 23.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.5),
                  color: Colors.grey[100],
                ),
                child: Icon(
                  CupertinoIcons.camera,
                  size: 15.0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '박연화',
              style: textTheme().displayMedium,
            ),
            Text('좌동 #00912')
          ],
        )
      ],
    );
  }

  Widget _buildProfileButton() {
    return Container(
      width: 450,
      height: 40,
      child: Center(
        child: Text('프로필 보기', style: textTheme().bodyLarge),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.black12),
      ),
    );
  }

  Widget _buildRoundedButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildRoundedButton(CupertinoIcons.ticket_fill, '판매내역'),
        _buildRoundedButton(CupertinoIcons.bag_fill, '구매내역'),
        _buildRoundedButton(CupertinoIcons.heart, '관심목록'),
      ],
    );
  }

  Widget _buildRoundedButton(IconData mIcon, String title) {
    return Column(
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1.0,
                  blurRadius: 3.0,
                  offset: const Offset(1, 2))
            ],
            color: Color.fromRGBO(255, 228, 208, 1),
          ),
          child: Icon(mIcon, color: Colors.orange),
        ),
        Text(title, style: textTheme().titleMedium),
      ],
    );
  }
}
