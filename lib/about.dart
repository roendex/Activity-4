import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'app_drawer.dart';

class AboutPage extends MyApp {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.purple,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              '../assets/smoothies.jpg', // Replace with your image path
              height: 300.0,
              width: 1500.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Looking for frozen smoothies? We got you! We offer healthy, delicious smoothies including strawberry, tropical and other fruit smoothies, green smoothies and protein smoothies.',
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
