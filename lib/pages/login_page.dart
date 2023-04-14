// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:tugas_praktikum/pages/home_page.dart';
import 'package:tugas_praktikum/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  final String username_login;
  final String password_login;
  LoginPage({required this.username_login, required this.password_login});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(
        username: username_login,
        password: password_login,
      ),
    );
  }
}

class Login extends StatefulWidget {
  final String username;
  final String password;
  Login({required this.username, required this.password});

  @override
  // State<Login> createState() => _LoginState();
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _loginSuccessfull = false;
  void _login() {
    String username2 = _usernameController.text;
    String password2 = _passwordController.text;

    if (username2 == username && password2 == password) {
      _loginSuccessfull = true;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(username2: username2),
        ),
      );
    } else {
      _loginSuccessfull = false;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('password atau username anda salah!'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.0,
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/5087/5087579.png',
                  height: 100.0,
                ),
              ),
              SizedBox(
                height: 80,
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 32.0),
                ),
              ),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Masukkan username',
                  labelStyle: TextStyle(color: Colors.green),
                  hintStyle: TextStyle(color: Colors.green),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukan password',
                  labelStyle: TextStyle(color: Colors.green),
                  hintStyle: TextStyle(color: Colors.green),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _login,
                child: Text('login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
