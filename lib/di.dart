import 'package:get/get.dart';
import 'package:credit_card_flutter/firebase_service.dart';

class DependencyInjection {
  //
  static init() async {
    // Initialize dependencies here

    await Get.putAsync(() => FirebaseService().init());
  }
}
