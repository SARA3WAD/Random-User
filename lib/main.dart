import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random/Providers/RandomUserProvider.dart';
import 'package:random/Screens/Screen.dart';

void main() {
  runApp(First());
}

class First extends StatelessWidget {
   First({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => RandomUserProvider(),)
    ],child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),);
  }
}
