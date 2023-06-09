import 'package:flutter/material.dart';
import 'package:main/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageSize = screenWidth * 0.75;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Products'),
        backgroundColor:
            Colors.purple, // Set the app bar background color to purple
      ),
      drawer: MyDrawer(), // Use the MyDrawer class as the drawer
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4, // Replace with the actual number of items
              itemBuilder: (context, index) {
                // Replace with your image names or paths
                final imageNames = [
                  '../assets/banana.jpg',
                  '../assets/berry.jpg',
                  '../assets/carrot.jpg',
                  '../assets/orange.jpg'
                ];
                final imageName = imageNames[index];

                String itemName = '';
                if (index == 0) {
                  itemName = 'Power Up';
                } else if (index == 1) {
                  itemName = 'Sweet Dreams';
                } else if (index == 2) {
                  itemName = 'Very Berry';
                }
                 else if (index == 3) {
                  itemName = 'Orange Frenzy';
                }


                return Column(
                  children: [
                    Image.asset(
                      imageName,
                      width: imageSize,
                      height: imageSize,
                    ),
                    SizedBox(height: 8),
                    Text(itemName),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
