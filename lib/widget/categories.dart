import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';

class Categories extends StatelessWidget {
  const Categories({required this.category});
  final CategoriesModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.image),
          ),
        ),
        child: Center(
          child: Text(
            category.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        height: 120,
        width: 200,
      ),
    );
  }
}
