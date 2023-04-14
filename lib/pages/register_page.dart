import 'package:flutter/material.dart';
import 'package:tugas_praktikum/pages/login_page.dart';

String username = "";
String password = "";

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // backgroundColor: Colors.black12,
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: RegisterScreen(),
        // backgroundColor: Colors.black,
      ),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleRegister() {
    final String username2 = _usernameController.text;
    final String password2 = _passwordController.text;
    username = username2;
    password = password2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 100,
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.0,
                child: Image.network(
                  'https://www.pngkey.com/png/detail/203-2035339_register-user-register-online-icon-png.png',
                  height: 100.0,
                ),
              ),
              SizedBox(
                height: 70,
                child: Text(
                  'REGISTER',
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
                        borderSide: BorderSide(color: Colors.green))),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan password',
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
                onPressed: () {
                  if (username != null || password != null) {
                    _handleRegister();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(
                          username_login: username,
                          password_login: password,
                        ),
                      ),
                    );
                  }
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
