import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/widget/categories.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});
  final List<CategoriesModel> ListOfCategories = const [
    CategoriesModel(image: 'assets/business.avif', text: 'business'),
    CategoriesModel(image: 'assets/entertaiment.avif', text: 'entertaiment'),
    CategoriesModel(image: 'assets/general.avif', text: 'general'),
    CategoriesModel(image: 'assets/health.avif', text: 'health'),
    CategoriesModel(image: 'assets/science.avif', text: 'science'),
    CategoriesModel(image: 'assets/sports.avif', text: 'sports'),
    CategoriesModel(image: 'assets/technology.jpeg', text: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: ListOfCategories.length,
          itemBuilder: (context, index) {
            return Categories(
              category: ListOfCategories[index],
            );
          }),
    );
  }
}
