import 'package:flutter/material.dart';
import 'package:iw_assignment_flutter_venusha/styles/AppStyles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        backgroundColor: AppStyles.primaryColor, // Button color
        foregroundColor: Colors.black,
        textStyle: TextStyle(fontSize: 16.0, ), // Text style
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Button border radius
        ),
      ),
    );
  }
}
