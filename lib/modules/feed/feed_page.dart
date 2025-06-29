import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10, // Temporal
        itemBuilder: (context, index) {
          return Container(
            color: Colors.black,
            child: Center(
              child: Text(
                'Receta ${index + 1}',
                style: const TextStyle(fontSize: 32),
              ),
            ),
          );
        },
      ),
    );
  }
}
