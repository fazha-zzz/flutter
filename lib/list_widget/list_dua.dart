import 'package:flutter/material.dart';
import 'package:flutter_faza/main_layout.dart';

class ListDua extends StatelessWidget {
  ListDua({super.key});

  final List<Map<String, dynamic>> listData = [
    {'color': Colors.red, 'partai': 'partai Banteng'},
    {'color': Colors.blue, 'partai': 'partai Joged'},
    {'color': Colors.yellow, 'partai': 'partai Solid'}
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Buider',
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, i) {
          final data = listData[i];
          return Container(
            margin: EdgeInsets.all(100),
            color: data['color'],
            width: 200,
            height: 200,
            child: Center(child: Text(data['partai']),),
          );
        },
      ),
    );
  }
}