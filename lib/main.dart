import 'package:flutter/material.dart';
import 'package:whatsap_app/whatsap.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 125, 126, 121)),
        useMaterial3: false,
      ),
      home: const WhatsAppPage(),
    );
  }
}


 