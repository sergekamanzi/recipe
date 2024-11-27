import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {
  final List<dynamic> recipes;

  FinalScreen({required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, '/prediction');
          },
          icon: Image.asset(
            'assets/images/back.png', // Path to your image
            width: 24.0,
            height: 24.0,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Center the row
          children: [
            Image.asset(
              'assets/images/recipe.png', // Path to your image
              width: 30.0, // Set width of the image
              height: 30.0, // Set height of the image
            ),
            const SizedBox(width: 10), // Add space between the image and the text
            const Text(
              "Recipe Suggestions",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: recipes.isEmpty
          ? const Center(child: Text("No recipes found"))
          : ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.network(
                      recipe['image'] ?? 'https://via.placeholder.com/50',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error); // Fallback for broken images
                      },
                    ),
                    title: Text(recipe['title']),
                    subtitle: Text(
                      "Used Ingredients: ${recipe['usedIngredientCount']} | Missing: ${recipe['missedIngredientCount']}",
                    ),
                  ),
                );
              },
            ),
    );
  }
}
