import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3D Objects',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BikeProductPage(),
    );
  }
}

class BikeProductPage extends StatelessWidget {
  const BikeProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        //title: const Text('Suzuki'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("Bike",style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
            ),
            Container(
              height: 450,
        
              child: O3D(
                src: 'assets/suzuki_rm-z450_supermoto.glb', // Replace with your asset's path
                controller: O3DController(),
                ar: false,
                autoPlay: true,
                autoRotate: true,
                cameraControls: true,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Suzuki',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Rm-Z450',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                
                 const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '\$ 450',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
              ],
            ),
           
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: Text(
                'The Suzuki RM-Z450 sets the standard for open-class motocross bikes with its powerful 449cc engine, and state-of-the-art suspension system.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle show details action
                    },
                    child: const Text('Show Details'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle buy action
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Background color
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.shopping_basket, color: Colors.white,),
                        Text("Buy Now", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
