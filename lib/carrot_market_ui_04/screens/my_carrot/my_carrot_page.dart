import 'package:flutter/material.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyCarrot Page 메모리 호출 확인');
    return Center(
      child: Text('MyCarrot Page'),
    );
  }
}
