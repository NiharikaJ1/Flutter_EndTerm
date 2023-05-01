import 'package:colorapp/model/message.dart';
import 'package:colorapp/model/seller.dart';
import 'package:colorapp/services/seller_operations.dart';
import 'package:colorapp/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'loginformvalidation.dart';

class RegisterValidation extends StatefulWidget {
  @override
  _RegisterValidationState createState() => _RegisterValidationState();
}

class _RegisterValidationState extends State<RegisterValidation> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController appIdController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formkey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 150,
                      child: Image.network(
                          'https://media.istockphoto.com/id/1283536918/vector/welcome-concept-flat-vector-foe-website-happy-tiny-people-are-near-huge-text-cartoon-office.jpg?s=1024x1024&w=is&k=20&c=AA8aEWA4VvtyD8CWuul-wRjUcSL53nYGmA5rzdH4RuI=')),
                ),
              ),
              Padding(
                // padding: const EdgeInsets.only(top: 60.0),
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 15),
                child: TextFormField(
                  controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                      EmailValidator(errorText: "Enter valid email id"),
                    ])),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: appIdController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'APPID',
                        hintText: 'Enter a valid App Id'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextFormField(
                  controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter secure password'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                      MinLengthValidator(6,
                          errorText: "Password should be atleast 6 characters"),
                      MaxLengthValidator(15,
                          errorText:
                              "Password should not be greater than 15 characters")
                    ])
                    //validatePassword,        //Function to check validation
                    ),
              ),

              

              //  ElevatedButton(
              //    onPressed: () {
              //      TODO FORGOT PASSWORD SCREEN GOES HERE
              //    },
              //    child: Text(
              //      'Forgot Password',
              //      style: TextStyle(color: Colors.blue, fontSize: 15),
              //   ),
              //  ),

              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () async {
                   Seller seller = Seller.takeInput(
                        userId: nameController.text,
                        password: passwordController.text,
                        appId: appIdController.text);

                    SellerOperations sellerOps = SellerOperations();
                    Message message = await sellerOps.add(seller);
                    createToast(message.message, context);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
