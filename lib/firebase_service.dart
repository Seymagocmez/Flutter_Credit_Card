import 'package:firebase_core/firebase_core.dart';
import 'package:credit_card_flutter/firebase_options.dart';
import 'package:get/get.dart';

class FirebaseService extends GetxService {
  //
  Future<FirebaseService> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    return this;
  }
}