import 'package:colorapp/User.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NextPage extends StatelessWidget {
  User user;
  List<String> colors;
  NextPage({super.key, required  this.user, required this.colors});
  double price=0.0;
  List<String> picked_colors=[];
  
  @override
  Widget build(BuildContext context) {
  for(int i=0;i<user.checkState.length;i++)
  {
    if(user.checkState[i]==true){
      price +=  user.price[i]!.toDouble();
      picked_colors.add(colors[i]);
    }   
  }
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Your Cart", style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for(int i = 0; i < picked_colors.length; i++) ...[
                  Text(" -- ${picked_colors[i]}", style: TextStyle(fontSize: 47,color: Colors.black),) 
                ],
            ],
            
          ),
        decoration: BoxDecoration(border: Border(bottom:BorderSide(width: 12))),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.fromLTRB(600, 10, 10, 50),
        child: Row(
          children: [
            Container( padding:EdgeInsets.fromLTRB(3, 0, 6, 0), child: Text("\$${price}",  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),)),
            ElevatedButton(onPressed: (){}, child: Text("Buy Now",))
          ],
        ),),
    );
  }
}