import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final String buttonText;
  const BottomButtons({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: 50,
        width: 110,
        child: ElevatedButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.grey[800]),
            backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
          ),
          onPressed: () {},
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 11),
          ),
        ),
      ),
    );
  }
}
