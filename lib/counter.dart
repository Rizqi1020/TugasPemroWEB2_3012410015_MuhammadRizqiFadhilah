import 'package:flutter/material.dart';

class HalamanCounter extends StatefulWidget {
  const HalamanCounter({super.key});

  @override
  State<HalamanCounter> createState() => _HalamanCounterState();
}

class _HalamanCounterState extends State<HalamanCounter> {
  int angka = 0;

  void tambah() {
    setState(() {
      angka = angka + 1;
    });
  }

  void kurang() {
    setState(() {
      angka = angka - 1;
    });
  }

  void reset() {
    setState(() {
      angka = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Nilai Counter saat ini:",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              "$angka",
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: kurang,
                  child: const Text("- Kurang"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: reset,
                  child: const Text("Reset"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: tambah,
                  child: const Text("+ Tambah"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
