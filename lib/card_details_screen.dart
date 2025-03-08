import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class CardDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
        
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            side: BorderSide(color: Colors.red, width: 2),
          ),
          onPressed: () {},
          child: Icon(
            Icons.copy,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Copy Details',
          style: TextStyle(color: Colors.red, fontSize: 16),
        ),
      ],
    );
  }
}
