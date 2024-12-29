import 'package:flutter/material.dart';
class Customwidget extends StatelessWidget {
  String image,first,last,email;
   Customwidget({super.key,
     required this.image,
     required this.first,
     required this.last,
     required this.email
   });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(image),
        title: Text(first+last),
        subtitle: Text(email),
      ),
    );
  }
}
