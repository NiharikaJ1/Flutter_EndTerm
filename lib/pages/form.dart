// import 'package:first_app/display_form.dart';
// import 'package:first_app/password_reset_form_field.dart';
import 'package:colorapp/pages/nextpage.dart';
import 'package:colorapp/providers/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'checkbox_form.dart';
import '../widgits/choose.dart';
// import 'model/passwords.dart';
// import 'model/user.dart';

class MultiWidgetForm extends StatefulWidget {
  const MultiWidgetForm({Key? key}) : super(key: key);

  @override
  State<MultiWidgetForm> createState() => _MultiWidgetFormState();
}

class _MultiWidgetFormState extends State<MultiWidgetForm> {
  // User user = User();
  var formKey = GlobalKey<FormState>();
  // List<bool?> checkState=[false,false,false,false,false,false,false,false,false,false];
  @override
  @override
  List<Widget> func(UserProvider user) {
    List<Widget> data = [];
    for (int i = 0; i < user.checkState.length; i++) {
      data.add(Row(
        children: [
          Container(
            width: 65,
            height: 65,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(user.checkState[i].cols),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
                child: CheckboxListTile(
                    title: Text(user.checkState[i].col),
                    value: user.checkState[i].state,
                    onChanged: (bool? value) {
                      setState(() {
                        user.checkState[i].state = value;
                      });
                    })),
          )
        ],
      ));
    }
    return data;
  }

  Widget build(BuildContext context) {
    return Consumer<UserProvider>(builder: (context, provider, child) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Buy happiness'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextPage()));
                },
                icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: ListView(
                padding: const EdgeInsets.all(8), children: func(provider))),
      );
    });
  }
}
