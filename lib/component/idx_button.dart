import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IdxButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onButtonPress;

  const IdxButton(
      {Key? key,
        required this.buttonText,
        required this.onButtonPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onButtonPress,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
            side: BorderSide(
                color: Colors.orange,
                width: 1)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          buttonText,
          style:
          const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}