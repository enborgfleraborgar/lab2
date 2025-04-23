import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:provider/provider.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);
    
    return SizedBox(
      height: 500,
      width: 300,
      child: Column(
        children: [
          Text(
            recipe.name,
            style: const TextStyle(fontSize: 36),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: recipe.image),
          ),
          Text(
            recipe.description,
            style: const TextStyle(fontSize: 14),
          ),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              uiController.deselectRecipe();
            },
          )
        ],
      ),
    );
  }
}
