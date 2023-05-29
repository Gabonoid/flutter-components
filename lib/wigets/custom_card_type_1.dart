import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo,
              color: AppThemes.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Quis magna ullamco in ullamco. Nulla do irure cupidatat et minim quis quis voluptate nostrud. Enim ullamco do sunt ut mollit anim irure ad laborum amet ad eiusmod et.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
