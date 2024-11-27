import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Fetch screen size using MediaQuery
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Dark overlay for text contrast
          Container(
            width: size.width,
            height: size.height,
            color: Colors.black.withOpacity(0.5),
          ),
          // Text content
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Responsive heading
                  Text(
                    'WELCOME TO\nRECIPE GENERATOR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.08, // Font size adjusts based on screen width
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03), // Spacing based on screen height
                  
                  // Responsive subtitle
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1), // Horizontal padding based on screen width
                    child: Text(
                      'We make the ingredients more special and\nalso plan for the next recipes',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: size.width * 0.04, // Adjust text size based on screen width
                      ),
                    ),
                  ),
                  
                  SizedBox(height: size.height * 0.05), // More space between subtitle and button

                  // Start Now button
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.25), // Top padding based on screen height
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF841E1E),
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.15, // Adjust button padding based on screen width
                          vertical: size.height * 0.01, // Adjust button padding based on screen height
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(70.0), // Keep the radius as it is
                            bottomRight: Radius.circular(70.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/prediction'); // Navigate to PredictionPage
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Start Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.045, // Adjust button text size
                            ),
                          ),
                          SizedBox(width: size.width * 0.02), // Space between text and icon
                          Flexible(
                            child: Image.asset(
                              'assets/images/forward.png',
                              width: size.width * 0.06, // Adjust image size based on screen width
                              height: size.height * 0.06, // Adjust image size based on screen height
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
