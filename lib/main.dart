import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home_page.dart';

void main() {
  //getttp();

  runApp(const NewsApp());
}

final dio = Dio();

void getttp() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=8e918dedd9a74c688a25c39cb7d9b0d0');

  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return homePage();
  }
}
