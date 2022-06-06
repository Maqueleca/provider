import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final shared = await SharedPreferences.getInstance();
            shared.remove('UserModel');
            Navigator.of(context).pushReplacementNamed('/auth');
          },
          child: const Text('Sign Out'),
        ),
      ),
    );
  }
}
