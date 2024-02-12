import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      type: MaterialType.transparency,
      elevation: 9,
      child: InkWell(
        highlightColor: Colors.redAccent,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        onTap: () {
        
          //print("tapped");
         
        },
        child: Container(
          width: width,
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: isOutlined ? Colors.brown : btncolor,
            border: Border.all(color: btncolor, width: 2.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: isOutlined ? btncolor : Colors.brown,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
