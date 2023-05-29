import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key, required this.url, this.name});

  final String url;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
      child: Column(
        children: [
            FadeInImage(
            image: NetworkImage(url),
            placeholder: const AssetImage('assets\\img\\jar-loading.gif'),
            width: double.infinity,
            height: 270,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            placeholderErrorBuilder: null,
          ),
          if(name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!),
            ),
        ],
      ),
    );
  }
}

// 'https://img.freepik.com/free-photo/monstera-deliciosa-plant-leaves-garden_53876-145000.jpg?w=2000'