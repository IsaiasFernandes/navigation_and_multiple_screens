
import 'package:flutter/cupertino.dart';

import '../../domain/models/category.dart';

class CategoryItem extends StatelessWidget {

  final Category category;

  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(category.title),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: [
          category.color.withOpacity(0.7),
          category.color,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        )
      ),
    );
  }

}