import 'package:flutter/material.dart';
import 'package:flutter_faza/list_widget/detail_screen.dart';
import 'package:flutter_faza/main_layout.dart';

class ArticleListScreen extends StatelessWidget {
  ArticleListScreen({super.key});

  final List<Map<String, String>> articles = const[
    {
      'title': 'Fluttter Dasar',
      'description': 'Belajar dasar Frutter',
      'image': 'https://picsum.photos/200/300?1'
    },
    {
      'title': 'State Managemenent',
      'description': 'Get x,Provider, bloc, Riverces',
      'image': 'https://picsum.photos/200/300?2'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Article',
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArticleDetailScreen(data: article),
                )
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6)
                ],
              ),
              child:Row(
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)
                    ),
                    image: DecorationImage(
                      image: NetworkImage(article['image']!),
                      fit: BoxFit.contain
                      )
                  ),
                ),
                //text
                Expanded(
                  child: Padding(
                    padding:const EdgeInsets.all(10),
                    child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      article['title']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      article['description']!,
                      style: const TextStyle(fontSize: 13),
                    )
                  ],
                )
                )
                ),
              ],
            )
            ),
            
          );
        }
      ),
    );
  }
}