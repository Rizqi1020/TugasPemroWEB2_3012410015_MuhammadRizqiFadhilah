import 'package:flutter/material.dart';

class HalamanDaftarMahasiswa extends StatelessWidget {
  const HalamanDaftarMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: AppBar(
        title: const Text(
          "Data Mahasiswa",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.red[600],
        centerTitle: true,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
        child: ListView(
          children: const [
            KartuMahasiswa(
              nama: "Muhammad Rizqi Fadhilah",
              nim: "3012410015",
              prodi: "Informatika",
              warnaAksen: Colors.blueAccent,
            ),
            SizedBox(height: 16),
            KartuMahasiswa(
              nama: "Revandika",
              nim: "3012410099",
              prodi: "Sistem Informasi",
              warnaAksen: Colors.pinkAccent,
            ),
            SizedBox(height: 16),
            KartuMahasiswa(
              nama: "Tarom Santoso",
              nim: "3012410098",
              prodi: "Teknik Komputer",
              warnaAksen: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;
  final Color warnaAksen;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
    required this.warnaAksen,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HalamanProfilDetail(
              nama: nama,
              nim: nim,
              prodi: prodi,
              warnaHeader: warnaAksen,
            ),
          ),
        );
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 100,
              decoration: BoxDecoration(
                color: warnaAksen,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
            ),
            const SizedBox(width: 15),
            CircleAvatar(
              radius: 30,
              backgroundColor: warnaAksen.withOpacity(0.2),
              child: Text(
                nama[0],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: warnaAksen,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.badge, size: 14, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(
                        nim,
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.school, size: 14, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(
                        prodi,
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class HalamanProfilDetail extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;
  final Color warnaHeader;

  const HalamanProfilDetail({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
    required this.warnaHeader,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Detail Profil", style: TextStyle(color: Colors.white)),
        backgroundColor: warnaHeader,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: warnaHeader,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    child: const Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 18,
                        child: Icon(Icons.camera_alt, size: 20, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            nama,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: warnaHeader.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "$nim • $prodi",
              style: TextStyle(
                fontSize: 16,
                color: warnaHeader,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hubungi Mahasiswa",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildContactBox(Icons.email_outlined, "Email", Colors.blue),
              _buildContactBox(Icons.phone_outlined, "Telepon", Colors.green),
              _buildContactBox(Icons.chat_bubble_outline, "Pesan", Colors.orange),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactBox(IconData iconData, String title, Color color) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Icon(iconData, color: color, size: 32),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
