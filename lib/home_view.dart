import 'package:flutter/material.dart';
import 'package:credit_card_flutter/detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3629B7),
      appBar: AppBar(
        backgroundColor: Color(0xFF3629B7),
        title: const Text(
          "Hi, Ayşe Yılmaz",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailView()),
            );
          },
          child: Text("Go to Details"),
        ),
      ),
    );
  }
}
