import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yanfan/models/user.dart';

class UserServices{
  String collection = "users";
  // ignore: deprecated_member_use
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void createUser(Map<String, dynamic> values) {
    String id = values["id"];
    // ignore: deprecated_member_use
    firestore.collection(collection).doc(id).setData(values);
  }

  void updateUserData(Map<String, dynamic> values){
    // ignore: deprecated_member_use
    firestore.collection(collection).doc(values['id']).updateData(values);
  }

  // ignore: deprecated_member_use
  Future<UserModel> getUserById(String id) => firestore.collection(collection).document(id).get().then((doc){
    return UserModel.snapshot(doc);
  });
}