import 'package:colorapp/model/message.dart';
import 'package:colorapp/model/seller.dart';
import 'package:colorapp/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SellerOperations {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<Message> add(Seller seller) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: seller.userId, password: seller.password);
      Message msg = Message.takeMessage(
          message: 'Registration is successful!', code: Constants.SUCCESS);
      print("YES");
      return msg;
    } catch (e) {
      return Message.takeMessage(
          message: 'Registration Failed!', code: Constants.FAIL);
    }
  }

  Future<Message> read(Seller seller) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: seller.userId, password: seller.password);
      return Message.takeMessage(
          message: 'Login successful!', code: Constants.SUCCESS);
    } catch (err) {
      return Message.takeMessage(
          message: 'Login Failed!', code: Constants.FAIL);
    }
  }
}
