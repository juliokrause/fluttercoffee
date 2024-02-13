import 'package:flutter/material.dart';

class CustomButton2 extends StatefulWidget {
  const CustomButton2(
      {super.key,
      required this.buttonText,
      this.isOutlined = false,
      required this.btncolor,
      this.width = 280});

  final String buttonText;
  final bool isOutlined;
  final double width;
  final Color btncolor;

  @override
  State<CustomButton2> createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  Color textColor = Colors.brown.shade700;

  @override
  Widget build(BuildContext context) {
    return Material(
      animationDuration: const Duration(seconds: 2),
      borderRadius: BorderRadius.circular(30),
      type: MaterialType.transparency,
      elevation: 9,
      child: Container(
        width: widget.width,
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: widget.isOutlined ? Colors.brown : widget.btncolor,
          border: Border.all(color: widget.btncolor, width: 2.5),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
