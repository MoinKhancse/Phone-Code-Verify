import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPresed;
  const CustomButton({Key? key, required this.text, required this.onPresed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:onPresed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      ),
    ),
      child: Text(text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
      ),
    );
  }
}
