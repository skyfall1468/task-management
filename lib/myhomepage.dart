import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text('Task Management')),
        backgroundColor: Color (0xFF578EF5),
      
        body:Column(
          children: [
            Center(
              child: Container(
                width: 300,
                color: Colors.white,
                child: TextField(
                  // Menambahkan dekorasi pada TextField
                  decoration: InputDecoration(
                    fillColor: Color (0xFFF2F7A0),
                    hintText: 'Masukkan Username',
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
              // Menghubungkan TextField dengan controller
              controller: inputNama,
              // Menangani event ketika pengguna menekan tombol "Enter" pada keyboard
              onSubmitted: (value) {
                // Menyimpan nilai yang dimasukkan ke dalam controller
                inputNama.text = value;
              },
            ),
          ),
        ),

            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            
              // Menambahkan tombol untuk menampilkan nilai dari TextField
              ElevatedButton(
                child: Text('Tampilkan Username'),
                onPressed: () {
                print(inputNama.text);
              },
            )
          ],
        )
    );
  }
}