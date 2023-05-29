import 'package:flutter/material.dart';

import '../wigets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            url:
                'https://img.freepik.com/free-photo/monstera-deliciosa-plant-leaves-garden_53876-145000.jpg?w=2000',
                name: 'Wallpaper de plantas',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            url:
                'https://images.unsplash.com/photo-1518531933037-91b2f5f229cc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxhbnQlMjB3YWxscGFwZXJ8ZW58MHx8MHx8&w=1000&q=80',
                name: 'Segundo Wallpaper',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            url:
                'https://wallpapercosmos.com/w/full/e/4/1/1239633-3840x2160-desktop-4k-green-leaf-background.jpg',
          ),
          SizedBox(
            height: 110,
          ),
        ],
      ),
    );
  }
}
