import 'package:firebase_core/firebase_core.dart';
class DependencyInjection {
  static Future<void> init() async {
    // Initialize Firebase
    await Firebase.initializeApp();
  }
}
