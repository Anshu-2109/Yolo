import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yolo_intern/sample.dart';
import 'navigation_provider.dart';
import 'card_freeze_screen.dart';
import 'card_details_screen.dart';

class HomeScreen extends StatelessWidget {
   List<Widget> widgetOptions = <Widget>[
    Sample(),
    CardDetailsScreen(),
    const Text('Genie Screen'), // Placeholder for Genie screen
  ];

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Select Payment Mode', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
      ),
      bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.qr_code),
                  label: 'yolo pay',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star_border), // Placeholder for ginie
                  label: 'ginie',
                ),
              ],
              currentIndex: navigationProvider.selectedIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                navigationProvider.updateIndex(index);
              },
            ),
          ),
         body: Center(
        child: Consumer<NavigationProvider>(
          builder: (context, provider, child) {
            return widgetOptions.elementAt(provider.selectedIndex);
          },
        ),
      ),  
      );
  }
}
