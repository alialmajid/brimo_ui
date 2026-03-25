import 'package:flutter/material.dart';

void main() {
  runApp(const BrimoUIApp());
}

class BrimoUIApp extends StatelessWidget {
  const BrimoUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brimo UI',
      theme: ThemeData(
        primaryColor: const Color(0xFF00529C)
      ),
      home: const BrimoHomePage(),
    );
  }
}

class BrimoHomePage extends StatelessWidget {
  const BrimoHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFFF00529C),
        elevation: 0,
        title: const Text(
          "BRImo",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          
        ],
      ),
    );
  }
}