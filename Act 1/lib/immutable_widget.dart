import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget{
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.green,
            Colors.black,
          ],
          radius: 1, // Larger radius to spread the gradient
          center: Alignment.center, // Center of the gradient
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(80),
        child: Transform.rotate(
          angle: 0.785398, // Rotate 45 degrees (π/4 radians)
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(30), // Round the edges
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 15,
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(20, 20), // Shadow only at the bottom
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: _buildShinyCircle(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
          ),
        ],
      ),
    );
  }
}
