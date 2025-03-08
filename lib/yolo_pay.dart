import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yolo_intern/card_details_screen.dart';
import 'package:yolo_intern/navigation_provider.dart';
import 'package:yolo_intern/widgets/Button.dart';
class YOLO_pay extends StatelessWidget {

 const YOLO_pay({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
   
    return 
     Scaffold(
      backgroundColor: Colors.black,
      body:Consumer<NavigationProvider>(builder:(context,provider,child)
          {
           return
       Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40,left: 16),
            child: Text("Choose your preferred payment method to make payment.",
            style: TextStyle(color: Colors.white54, fontSize: 16),
            )
             ),
             Padding(padding: const EdgeInsets.only(top: 25,left: 16),
             child: Row(
               children: [
                 Button(text: "Pay",firstcolor: Colors.red,secondcolor: Colors.white),
                 SizedBox(width: 10),
                 Button(text: "Card",firstcolor: Colors.white,secondcolor: Colors.red),
               ],
             ),
             ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 20),
                child: Text("Your Digital Debit Card",style: TextStyle(color: Colors.white54, fontSize: 16),),
              ),
          Padding(
            padding: const EdgeInsets.only(top:10,left: 8),
            child:Row(
              children: [
               
                SizedBox(width: 10),
                  CardDetailsScreen(),
                Column(
                  children: [
                       
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InkWell(
                                 onTap: () {
                                provider.updateOption();
                                 
                                  },
                               borderRadius: BorderRadius.circular(50), 
                            child: Container(
                                   width: 60, 
                                   height: 60,
                                    decoration: BoxDecoration(
                                     color: Colors.black, 
                                    shape: BoxShape.circle, 
                                     border: Border.all(
                                        width: 2,
                                       color: Colors.white.withOpacity(0.2)
                                      ),
                                  boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 10,
                                 
                                        ),
                                      ],
                                    ),
                                    child:  Icon(
                                      Icons.ac_unit, 
                                      color: provider.updatecolor? Colors.red: Colors.white, 
                                      size: 30, 
                                    ),
                                  ),
                                ),
                    ),
                    
                    Text(
                      provider.option ? 'unfreeze' : 'freeze',
                      style: TextStyle(color:provider.updatecolor? Colors.red: Colors.white, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          )
        ]
       );
      }
      ),
    );
  }
}