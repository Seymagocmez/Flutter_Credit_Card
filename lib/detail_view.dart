import 'package:flutter/material.dart';

import 'country_service.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3629B7),
      ),
      backgroundColor: Color(0xFF3629B7),
      body: Container(
          color: Colors.white,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      await CountryService().fetchCountry();
                    },
                    child: Text("Veriyi çek"))
              ],
            ),
          )),
    );
  }
}