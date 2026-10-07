import 'package:flutter/material.dart';
import 'package:task_manager/login.dart';
import 'package:task_manager/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // Menambahkan komentar untuk menjelaskan fungsi build
  Widget build(BuildContext context) {
    // Mengembalikan widget MaterialApp sebagai root dari aplikasi
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // Menentukan rute awal aplikasi
      initialRoute: '/',
      // Menambahkan rute untuk halaman login dan halaman utama
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const MyHomePage(),
        '/login': (context) => const Login(),
      },
    );
  }
}
