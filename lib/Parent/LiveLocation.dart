import 'package:flutter/material.dart';

class LiveLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.network("https://www.randymajors.org/wp-content/uploads/randymajors-site-screenshot.webp",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
    );
  }
}
