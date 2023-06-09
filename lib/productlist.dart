import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'productdetails.dart';

import 'app_drawer.dart'; // import your Drawer class

class ProductList extends MyApp {
  final List<Map<String, String>> products = [
    {
      'name': 'Power Up',
      'description':
          'Raw Fresh Carrot',
      'price': '\₱115.00',
      'image': '../assets/carrot.jpg'
    },
    {
      'name': 'Sweet Dreams',
      'description':
          'Banana, Beet, Pinapple',
      'price': '\₱100.00',
      'image': '../assets/banana.jpg'
    },
    {
      'name': 'Very Berry',
      'description':
          'Blueberry and Strawberry',
      'price': '\₱120.00',
      'image': '../assets/berry.jpg'
    },
    {
      'name': 'Orange Frenzy',
      'description':
          'Orange',
      'price': '\₱130.00',
      'image': '../assets/orange.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Colors.purple,
      ),
      drawer: const MyDrawer(), // use your Drawer class here
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(products[index]['image']!),
            title: Text(products[index]['name']!),
            subtitle: Text(products[index]['description']!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(products[index]['price']!),
                const SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    // TODO: Implement add to cart functionality.
                  },
                ),
                IconButton(
                  icon: Icon(Icons.payment),
                  onPressed: () {
                    // TODO: Implement buy functionality.
                  },
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetails(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
