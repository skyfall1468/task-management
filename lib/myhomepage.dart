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
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Management')),
        backgroundColor: Color (0xFF578EF5),
        body:Column(
          children: [
            Center(
              child: Container(
                width: 300,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Masukkan Username',
              ),
              controller: inputNama,
              onSubmitted: (value) {
                inputNama.text = value;
              },
            ),
          ),
        ),
            ElevatedButton(
              child: Text('Tampilkan Username'),
              onPressed: () {
                print('${inputNama.text}');
              },
            )
          ],
        )
    );
  }
}