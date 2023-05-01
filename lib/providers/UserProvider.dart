import 'package:colorapp/model/color.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  // List<bool?> checkState=[false,false,false,false,false,false,false,false,false,false];
  // List<double?> price=[10.00,,,,,,,,,];
  // List<String> colors=["Redu","Blue","Black","Green","Yellow","Golden","Magenta","Pink","Silver","White"];
  // List cols=[Colors.red,Colors.blue,Colors.black,Colors.green,Colors.yellow,Colors.yellowAccent,Colors.pinkAccent,Colors.pink,Color.fromARGB(255, 150, 121, 119),Color.fromARGB(255, 150, 174, 177)];
  List checkState=[Colord.getData(state: false,col:"Masala Dosa",cols: 'https://t4.ftcdn.net/jpg/01/89/45/21/360_F_189452136_gJBG4ZRXY9NnZZCGV2s8QhObmpeerJTO.jpg',price: 10.00 ),
  Colord.getData(state: false,col:"Noodles",cols: "https://www.loveandoliveoil.com/wp-content/uploads/2015/03/soy-sauce-noodlesH2.jpg",price: 21.00 ),
  Colord.getData(state: false,col:"Dal Makhni",cols: "https://myfoodstory.com/wp-content/uploads/2018/08/Dal-Makhani-New-3-500x500.jpg",price: 32.00 ),
  Colord.getData(state: false,col:"Kadhai Paneer",cols: "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/kadai-paneer-recipe.jpg",price: 54.78 ),
  Colord.getData(state: false,col:"Momos",cols: "https://t3.ftcdn.net/jpg/03/98/52/84/360_F_398528484_ra3Tom42wvihhQfbCXtMqVORILZeUZ5B.jpg",price: 12.99 ),
  Colord.getData(state: false,col:"Biryani",cols: "https://img.freepik.com/premium-photo/dum-handi-chicken-biryani-is-prepared-earthen-clay-pot-called-haandi-popular-indian-non-vegetarian-food_466689-52344.jpg",price: 10.00 ),
  Colord.getData(state: false,col:"water",cols: "https://cdn.pixabay.com/photo/2017/06/05/14/55/glass-2374311__340.jpg",price: 21.00 ),
  Colord.getData(state: false,col:"Pao Bhaji",cols: "https://images.pexels.com/photos/5410400/pexels-photo-5410400.jpeg?cs=srgb&dl=pexels-saveurs-secretes-5410400.jpg",price: 32.00 ),
  Colord.getData(state: false,col:"Medu Vada",cols: "https://www.karthfoodfactory.com/wp-content/uploads/2021/03/Featureimage-KarthFoodFactory-3.png",price: 54.78 ),
  Colord.getData(state: false,col:"Paneer Paratha",cols: "https://www.whiskaffair.com/wp-content/uploads/2022/07/Aloo-Paneer-Paratha-2-3.jpg",price: 12.99 ),];
 
  void setColor(int i, bool val )
  {
    checkState[i]=val;
    notifyListeners();
  }
  bool? getColor(int i,)
  {
    notifyListeners();
    return checkState[i];
  }
}