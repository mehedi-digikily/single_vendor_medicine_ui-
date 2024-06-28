import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle),
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(child: Text('${index + 1}'),),
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 10,
      ),
    );
  }
}
