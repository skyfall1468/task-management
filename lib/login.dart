import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(''),
        backgroundColor: const Color(0xFF578EF5),
      ),
      backgroundColor: const Color(0xFF578EF5),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Admin Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: inputNama,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    fillColor: const Color(0xFFF2F7A0),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: inputPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: const Color(0xFFF2F7A0),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  print('Username: ${inputNama.text}, Password: ${inputPassword.text}');
                },
                child: const Text('Masuk'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
