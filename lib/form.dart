import 'package:colorapp/nextpage.dart';
import 'package:flutter/material.dart';

import 'User.dart';
import 'choose.dart';

List<String> colors = [
  "Red",
  "Blue",
  "Black",
  "Green",
  "Yellow",
  "Golden",
  "Magenta",
  "Pink",
  "Silver",
  "White"
];
List cols = [
  Colors.red,
  Colors.blue,
  Colors.black,
  Colors.green,
  Colors.yellow,
  Colors.yellowAccent,
  Colors.pinkAccent,
  Colors.pink,
  Color.fromARGB(255, 150, 121, 119),
  Color.fromARGB(255, 150, 174, 177)
];

class MultiWidgetForm extends StatefulWidget {
  const MultiWidgetForm({Key? key}) : super(key: key);

  @override
  State<MultiWidgetForm> createState() => _MultiWidgetFormState();
}

class _MultiWidgetFormState extends State<MultiWidgetForm> {
  var formKey = GlobalKey<FormState>();

  User user = User();
  @override
  @override
  List<Widget> func() {
    List<Widget> data = [];
    for (int i = 0; i < colors.length; i++) {
      data.add(Row(
        children: [
          Container(
              width: 37,
              height: 37,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: new BoxDecoration(
                color: cols[i],
              )),
          Expanded(
            child: Container(
                child: CheckboxListTile(
                    title: Text(colors[i]),
                    value: user.checkState[i],
                    onChanged: (bool? value) {
                      setState(() {
                        user.checkState[i] = value;
                      });
                    })),
          )
        ],
      ));
    }
    return data;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('MultiWidget Form'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            NextPage(user: user, colors: colors)));
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
                key: formKey,
                // autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: func(),
                )),
          ],
        ),
      ),
    );
  }
}
