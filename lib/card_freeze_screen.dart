import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class CardFreezeScreen extends StatefulWidget {
  @override
  _CardFreezeScreenState createState() => _CardFreezeScreenState();
}

class _CardFreezeScreenState extends State<CardFreezeScreen>
    with SingleTickerProviderStateMixin {
  bool isFrozen = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleFreeze() {
    setState(() {
      isFrozen = !isFrozen;
      isFrozen ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ScaleTransition(
          scale: _animation,
          child: Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/card_background.png'), // Ensure this image is added to your assets
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
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
          onPressed: _toggleFreeze,
          child: Icon(
            isFrozen ? Icons.lock_open : Icons.lock,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 10),
        Text(
          isFrozen ? 'Unfreeze' : 'Freeze',
          style: TextStyle(color: Colors.red, fontSize: 16),
        ),
      ],
    );
  }
}
