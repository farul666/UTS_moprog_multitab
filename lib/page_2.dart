import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  void myDialog(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (BuildContext konteks) {
          return AlertDialog(
              title: const Text('Hubungi Kami'),
              content: const Text('Hubungi kami di farul123654@gmail.com'),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(konteks).pop(),
                  child: const Text('Close'),
                )
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("Selamat Datang di Indonesia",
                          style: TextStyle(fontSize: 19))),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 0.0, right: 0.0, left: 0.0),
                    child: Text('Nikmati Alam Indonesia yang Indah',
                        style: TextStyle(fontSize: 19)),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        'https://2.bp.blogspot.com/-W7uYRonSCO4/VhsXI1vN9oI/AAAAAAAADNg/YxXnqRhJhCE/s1600/Gambar-Pemandangan-Alam-Indonesia-Indah-37.jpg',
                      )),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        'https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg',
                      )),
                  ElevatedButton(
                    onPressed: () => myDialog(context),
                    child: const Text('Kontak kami'),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
