import 'package:flutter/material.dart';
import 'package:news_app/widget/news_tile.dart';

class NewsTileList extends StatelessWidget {
  const NewsTileList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return NewsTile();
        },
      ),
    );
  }
}
