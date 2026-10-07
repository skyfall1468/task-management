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
        title: Text('Admin Login')),
        backgroundColor: Color(0xFF578EF5),
      
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: inputNama,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: inputPassword,
              decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              ),
            ),
          ElevatedButton(
            onPressed: () {
              // Handle login logic here
              String username = inputNama.text;
              String password = inputPassword.text;
              print('Username: $username, Password: $password');
            },
            child: Text('Masuk'),
          ),
          ],
        ),
      ),
    );
  }
}