import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(builder: (context) {
          return const SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Fahrul Fauji',
                        style: (TextStyle(fontSize: 19)),
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 20.0, right: 0.0, left: 0.0),
                    child: Text('21201195',
                      style: (TextStyle(fontSize: 19)),),
                  ),
                  Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Image(
                        image: AssetImage('assets/palal.jpg'),
                      )),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}