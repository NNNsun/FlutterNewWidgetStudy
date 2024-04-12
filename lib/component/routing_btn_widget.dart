import 'package:flutter/material.dart';

class RoutingBtnWidget extends StatelessWidget {
  const RoutingBtnWidget({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade100,
          minimumSize: const Size.fromHeight(50),
          foregroundColor: Colors.black,
        ),
        child: Text(title),
      ),
    );
  }
}
