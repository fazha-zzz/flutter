import 'package:flutter/material.dart';
import 'package:flutter_faza/main_layout.dart';

class GriDProductPage extends StatelessWidget {
  const GriDProductPage({super.key});

  final List<Map<String, String>> products = const [
    {
      'name': 'Kaos Flutter',
      'price': 'Rp120.000',
      'image': 'https://picsum.photos/200?1'
    },
    {
      'name': 'Hoodle Dart',
      'price': 'Rp220.000',
      'image': 'https://picsum.photos/200?2'
    },
    {
      'name': 'Sticker UI',
      'price': 'Rp20.000',
      'image': 'https://picsum.photos/200?3'
    },
    {
      'name': 'Totebag Dev',
      'price': 'Rp80.000',
      'image': 'https://picsum.photos/200?4'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'grid View',
      body: Padding(padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
          ),
          itemBuilder: (context,index) {
            final product = products[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],
                boxShadow: const[
                  BoxShadow(color: Colors.black12, blurRadius: 6)
                ]
              ),
              child: Stack(
                children: [
                  //background image
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.network(product['image']!, fit:BoxFit.cover),
                    ),
                    ),
                    //overlay
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    //Price & Name
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product['name']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Text(product['price']!,
                          style: const TextStyle(
                            color: Colors.white, fontSize: 12
                          ),),
                        ],
                      )
                      )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}