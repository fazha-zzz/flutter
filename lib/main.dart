import 'package:flutter/material.dart';
import 'package:flutter_faza/list_widget/detail_screen.dart';
import 'package:flutter_faza/list_widget/list_dua.dart';
import 'package:flutter_faza/list_widget/list_satu.dart';
import 'package:flutter_faza/list_widget/list_screen.dart';
import 'package:flutter_faza/main_layout.dart';
import 'package:flutter_faza/row_and_column_widget/column_satu.dart';
import 'package:flutter_faza/row_and_column_widget/latihan_rowcol_dua.dart';
import 'package:flutter_faza/row_and_column_widget/latihan_rowcol_satu.dart';
import 'package:flutter_faza/row_and_column_widget/row_satu.dart';
import 'package:flutter_faza/tugas/tugas_day_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ArticleListScreen());
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Flutter',
      body: Center(
        child: Text(
          'Hello FLutter',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}