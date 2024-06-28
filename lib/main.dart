import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home_Screen.dart';

void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Health Project",
      home: HomeScreen(),
    );
  }
}
