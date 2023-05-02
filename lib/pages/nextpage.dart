import 'package:colorapp/providers/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class NextPage extends StatelessWidget {
  NextPage({super.key});
  double price = 0.0;
  List<String> picked_colors = [];

  @override
  Widget build(BuildContext context) {
    UserProvider user = Provider.of<UserProvider>(context);
    for (int i = 0; i < user.checkState.length; i++) {
      print(user.checkState[i].price);
      if (user.checkState[i].state == true) {
        price += user.checkState[i].price!.toDouble();
        picked_colors.add(user.checkState[i].col);
      }
    }
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text(
          "Your Cart",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < picked_colors.length; i++) ...[
              Text(
                " -- ${picked_colors[i]}",
                style: TextStyle(fontSize: 30, color: Colors.black),
              )
            ],
          ],
        ),
        decoration:
            BoxDecoration(border: Border(bottom: BorderSide(width: 12))),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.fromLTRB(6, 10, 10, 50),
        child: Row(
          children: [
            Container(
                child: Text(
              "\$${price}",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
            )),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Buy Now",
                ))
          ],
        ),
      ),
    );
  }
}
