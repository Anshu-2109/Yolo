import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yolo_intern/navigation_provider.dart';

class Button extends StatelessWidget{

  String text;
  Color firstcolor;
  Color secondcolor;

    Button({required this.text, required this.firstcolor, required this.secondcolor});
  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context,listen: false);
    return Container(
      width: 100,
      height: 50,
      child: ElevatedButton(
        onPressed: (){
          navigationProvider.ChangeButtonColor();
      }, 
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        side: BorderSide(
          color: navigationProvider.buttonColor? firstcolor: secondcolor,
          width: 2
        )
      ),
      child:  Text(text, style: TextStyle( fontSize: 16,fontWeight: FontWeight.bold,color: navigationProvider.buttonColor? firstcolor: secondcolor,)
      )
      ),
    );
  }
}