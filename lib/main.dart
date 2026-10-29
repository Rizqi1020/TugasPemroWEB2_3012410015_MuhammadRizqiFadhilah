import 'package:flutter/material.dart';
import 'profil.dart';
import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int _indexAktif = 0;

  final List<Widget> _daftarHalaman = [
    const HalamanDaftarMahasiswa(),
    const HalamanCounter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _daftarHalaman[_indexAktif],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexAktif,
        onTap: (int indexBaru) {
          setState(() {
            _indexAktif = indexBaru;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Counter',
          ),
        ],
      ),
    );
  }
}
