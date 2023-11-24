import 'package:flutter/material.dart';
import 'package:news_app/widget/categories_list.dart';
import 'package:news_app/widget/news_tile_list.dart';

class homePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("News", style: TextStyle(color: Colors.black)),
              Text("Cloud", style: TextStyle(color: Colors.orange)),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 22,
                ),
              ),
              NewsTileList(),
            ],
          ),
        ),
      ),
    );
  }
}
