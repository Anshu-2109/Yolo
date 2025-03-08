import 'package:flutter/material.dart';
import 'package:faker/faker.dart' as faker;
import 'package:provider/provider.dart';
import 'package:yolo_intern/navigation_provider.dart';

class CardDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
           return Consumer<NavigationProvider>(builder:(context,provider,child)=>  Stack(
                  children: [
                    Container(
                    width: 186,
                    height: 296,
                   
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 2,
                        color: Colors.white.withOpacity(0.2)
                      ),
                      boxShadow:[ BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 4,
                  
                      )
                    ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Text(
                                'YOLO',
                                style: TextStyle(color: Colors.red, fontFamily: 'NeonFont', fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                             const  SizedBox(
                                width: 40
                              ),
                              SizedBox(
                                width: 60,
                                height: 40,
                                child: Image.asset("assets/images/yes_bank_logo.png"),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Text(
                                   faker.random.integer(9999, min: 1000).toString(),
                                    style: const TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
                                  ),
                                
                              const SizedBox(width: 10),
                              Text(
                               faker.random.integer(9999, min: 1000).toString(),
                                style:const  TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                             const  SizedBox(width: 10),
                              Text(
                               faker.random.integer(9999, min: 1000).toString(),
                                style:const TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                             const  SizedBox(width: 10),
                              Text(
                               faker.random.integer(9999, min: 1000).toString(),
                                style:const TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                                 ],
                                 ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Expiry',
                                    style: TextStyle(color: Colors.white54, fontSize: 14),
                                  ),
                                  Text(
                                      provider.generateExpiryDate(),
                                    style: const TextStyle(color: Colors.white, fontSize: 17),
                                  ),
                                  const SizedBox(
                                    height: 19,
                                  )
                                  ,
                                  const Text(
                                    'cvv',
                                    style: TextStyle(color: Colors.white54, fontSize: 15),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '***',
                                        style: TextStyle(color: Colors.white54, fontSize: 28),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Icon(Icons.visibility_off_outlined,color: Colors.red,)
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ],
                        ),
                      
                       const Padding(
                         padding:  EdgeInsets.only(left: 16,top: 8),
                         child: Row(
                          children: [
                            Icon(Icons.folder_copy_outlined,color: Colors.red,size: 18,),
                            SizedBox(width: 10),
                            Text('Copy Details',style: TextStyle(color: Colors.red,fontSize: 14),)
                          ],
                         ),
                       ),
                      
                       Row(
                        children: [
                         const SizedBox(
                            width: 74,
                          ),
                          SizedBox(
                            width: 90,
                            height: 53,
                            child: Image.asset("assets/images/rupay_logo.png"))
                        ],
                       )
                      ],
                    ),
                  ),
                 Opacity(
                          opacity: provider.updateOpacity?1:0.3, // Adjust this value (0.0 to 1.0) for transparency
                          child: SizedBox(
                            width: 186,
                            height: 296,
                            child: Image.asset(
                              'assets/images/Design_Layer.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                  ]
           )
                );
  }
}
