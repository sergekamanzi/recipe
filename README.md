# Recipe Predictor 🍽️

**Recipe Predictor** is a Flutter-based mobile application that suggests recipes based on the ingredients you have on hand. It uses the Spoonacular API to fetch recipes and provide suggestions tailored to your available ingredients.


---

## Overview

Recipe Predictor simplifies your cooking experience by suggesting delicious recipes based on the ingredients you already have. No more worrying about what to cook—just enter your ingredients, and let the app do the rest!

The app fetches recipes from the Spoonacular API and displays detailed information about each recipe, including the name, required ingredients, and missing ingredients. Recipe Predictor helps reduce food waste by ensuring you use what you have.

---

## ✨ Features

- **Ingredient-Based Recipe Suggestions**: Enter your available ingredients, and the app will suggest recipes you can make.
- **Detailed Recipe Info**: View the recipe name, used ingredients, missing ingredients, and a preview image.
- **Responsive UI**: Optimized for both Android and iOS devices.
- **Fallback Image Support**: Displays a default image if the recipe image is missing or broken.
- **User-Friendly Interface**: Simple and intuitive design, allowing users to easily navigate and use the app.

---

## 🛠️ Technologies Used

- **Flutter**: The app is built using the Flutter framework, which allows cross-platform development for both Android and iOS.
- **Dart**: Dart is the programming language used for Flutter applications.
- **Spoonacular API**: Provides recipe data based on the user's ingredients.
- **REST API**: Fetches real-time data from the Spoonacular API.
- **Material Design**: Clean and modern UI design using Flutter's Material components.

---

## 🚀 Getting Started

### Prerequisites

Before you can run the app, make sure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) or [VSCode](https://code.visualstudio.com/) (with Flutter & Dart extensions)
- [Spoonacular API Key](https://spoonacular.com/food-api)

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/sergekamanzi/recipe_predector.git
   cd recipe_predector
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. **API Setup**:

   - Sign up for an API key at [Spoonacular](https://spoonacular.com/food-api).
   - Create a `.env` file in the root directory and add your API key:

     ```bash
     SPOONACULAR_API_KEY= 740a434592c64427915e091208f1d126
     ```

### Running the App

- **For Android**:

  ```bash
  flutter run
  ```

- **For iOS** (ensure you have Xcode installed):

  ```bash
  flutter run
  ```

You can also run the app using the IDE (Android Studio or VSCode) by selecting the target device and clicking on "Run."

---

## 🛠️ Future Improvements

Some potential future features to enhance the app include:

- **Favorite Recipes**: Users can save their favorite recipes for quick access later.
- **Shopping List**: Automatically create a shopping list for missing ingredients.
- **Recipe Rating**: Users can rate recipes based on their cooking experience.
- **Meal Planner**: Suggest meal plans based on user preferences and dietary restrictions.

---

## 🤝 Contributing

Contributions are welcome! Here's how you can get started:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeature`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add a new feature'`).
5. Push to the branch (`git push origin feature/YourFeature`).
6. Open a Pull Request.

Feel free to check out the [issues](https://github.com/sergekamanzi/recipe_predector/issues) and contribute by solving bugs or adding new features.

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---


Enjoy cooking with **Recipe Predictor**! 🍳🍕🍜

---

### Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Spoonacular API](https://spoonacular.com/food-api)
- [Material Design Guidelines](https://material.io/design)
