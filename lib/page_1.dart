import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController namaController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController kelasController = TextEditingController();

  String nama = "";
  String nim = "";
  String kelas = "";

  @override
  void initState() {
    super.initState();

    namaController.addListener(namaListener);
    nimController.addListener(nimListener);
    kelasController.addListener(kelasListener);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(hintText: 'Masukkan Nama'),
            ),
            TextField(
              controller: nimController,
              decoration: const InputDecoration(hintText: 'Masukkan NIM'),
            ),
            TextField(
              controller: kelasController,
              decoration: const InputDecoration(hintText: 'Masukkan Kelas'),
            ),
            const SizedBox(height: 54),
            const Text(
              'Selamat Datang',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              'Nama: $nama',
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Text(
              'NIM: $nim',
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Text(
              'Kelas: $kelas',
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  void namaListener() {
    setState(() {
      nama = namaController.text;
    });
  }

  void nimListener() {
    setState(() {
      nim = nimController.text;
    });
  }

  void kelasListener() {
    setState(() {
      kelas = kelasController.text;
    });
  }
}