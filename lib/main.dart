import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'const.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      home: LoginScreen(title: 'CHAT DEMO'),
      debugShowCheckedModeBanner: false,
    );
  }
}

Future<dynamic> backgroundMessageHandler(Map<String, dynamic> message) {
  print("_backgroundMessageHandler");
  if (message.containsKey('data')) {
    // Handle data message
    final dynamic data = message['data'];
    print("_backgroundMessageHandler data: ${data}");
  }

  if (message.containsKey('notification')) {
    // Handle notification message
    final dynamic notification = message['notification'];
    print("_backgroundMessageHandler notification: ${notification}");
  }
}
