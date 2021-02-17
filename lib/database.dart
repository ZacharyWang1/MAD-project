import 'package:cloud_firestore/cloud_firestore.dart';
import 'userdata.dart';

class DatabaseService {
  //collection reference
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference userCollection =
      Firestore.instance.collection('userdata');

  Future updateUserData(int age, String name, int weight) async {
    return await userCollection.document(uid).setData({
      'Age': age,
      'Name': name,
      'Weight': weight,
    });
  }

  List<UserData> _userlistfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return UserData(
          name: doc.data['name'] ?? '',
          weight: doc.data['weight'] ?? '0',
          age: doc.data['age'] ?? '0');
    });
  }

  //get user stream
  Stream<List<UserData>> get userdata {
    return userCollection.snapshots().map(_userlistfromSnapshot);
  }
}
