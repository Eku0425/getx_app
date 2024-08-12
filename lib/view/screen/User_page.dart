import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(),
          );
        },
      ),
      appBar: AppBar(
        title: Text(
          'User page',
          style: TextStyle(fontSize: 25, color: Colors.blue),
        ),
        actions: [
          Icon(
            Icons.menu,
            size: 30,
          )
        ],
      ),
      body: Column(
        children: [




        ],
      ),
    );
  }
}
