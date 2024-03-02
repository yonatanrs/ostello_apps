import 'package:flutter/material.dart';

class StartAssessmentCard extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final VoidCallback onPressed;

  const StartAssessmentCard({
    Key? key,
    required this.imagePath,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add padding
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(imagePath, fit: BoxFit.cover),
          Positioned(
            bottom: 22, // Adjust the position as needed
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Button color
                onPrimary: Colors.black, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13), // Rounded corners
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 66.0, vertical: 11.5), // Button padding
                child: Text(
                  buttonText,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Adjust font size as needed
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
