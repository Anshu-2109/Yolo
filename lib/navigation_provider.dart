import 'package:flutter/material.dart';
import 'package:faker/faker.dart' as faker;

class NavigationProvider with ChangeNotifier {
  int _selectedIndex = 1;

  int get selectedIndex => _selectedIndex;
   bool buttonColor=false;
  void updateIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
   bool updatecolor = false;
  bool option=false;
  bool updateOpacity=false;
 
  void updateOption() {
   updatecolor = !updatecolor; // Flip the boolean value
    option = !option;
    updateOpacity=!updateOpacity;
    notifyListeners();
  }

  void ChangeButtonColor(){
      buttonColor = !buttonColor;
      notifyListeners();
  }

  String generateExpiryDate() {
    int month = faker.random.integer(11) + 1; // 1 to 12
    String formattedMonth = month.toString().padLeft(2, '0');
 
  int currentYear = DateTime.now().year;
    int randomYear = faker.random.integer(5) + currentYear; 
    String formattedYear = randomYear.toString().substring(2); // Last two digits
  return formattedMonth+'/'+formattedYear; // Format as MM/YY
}

  
}
