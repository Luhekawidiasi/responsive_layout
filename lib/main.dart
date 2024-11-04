import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Diri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BiodataPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 36, 172, 240),
          leading: const Icon(Icons.people_outline),
          title: const Center(
            child: Text('BIODATA DIRI'),
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              bool isWideScreen = constraints.maxWidth > 300;
              return Flex(
                direction: isWideScreen ? Axis.horizontal : Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Foto dan Identitas
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/WhatsApp Image 2024-11-04 at 08.58.07.jpeg',
                            height: 350,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                          // Ganti dengan path foto Anda
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Nama: Luh Eka Widiasih',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'NIM: 42230065',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Prodi: Teknologi Informasi',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 40, height: 30),

                  // Deskripsi dan Kemampuan
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                            height:
                                30), // Menambahkan jarak sebelum teks "Deskripsi Diri:"
                        const Text(
                          'Deskripsi Diri:',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          child: Text(
                            'Hallo Saya Luh Eka Widiasih biasa dipanggil widi saya adalah seorang karyawan di Universitas Pendidikan Nasional (Undiknas) dan juga sedang melanjutkan study di jurusan Teknologi Informasi  di Universitas Pendidikan Nasional (Undiknas),'
                            ' Melalui peran ini, saya berharap dapat mengembangkan kemampuan profesional dan akademis saya, serta bersemangat untuk mempelajari hal-hal baru di bidang teknologi. ',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 20),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Kemampuan:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // List Kemampuan
                        Flexible(
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: const [
                              ListTile(
                                leading: Icon(Icons.check, color: Colors.blue),
                                title: Text('Pengembangan HTML,JS'),
                              ),
                              ListTile(
                                leading: Icon(Icons.check, color: Colors.blue),
                                title: Text('Memasak'),
                              ),
                              ListTile(
                                leading: Icon(Icons.check, color: Colors.blue),
                                title: Text('Pengolahan SQL'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
