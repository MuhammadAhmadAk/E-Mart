import 'package:emart_app/consts/consts.dart';

class FireStoreService{
  //getUsers data
  static getUser(uid){
    return firestore.collection(userCollection).where('id',isEqualTo: uid).snapshots();
  }
}