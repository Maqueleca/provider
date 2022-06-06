import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

      ],
      child: MaterialApp(
        title: 'Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/' : (_) => const SplashPage(),
          '/auth' : (_) => const AuthPage(),
          '/home' : (_) => const Homepage(),
        },      
      ),
    );
  }
}