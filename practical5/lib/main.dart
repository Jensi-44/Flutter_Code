import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  String displayText = "";

  void login() {
    setState(() {
      displayText =
          'Username: ${emailcontroller.text}\nPassword: ${passwordcontroller.text}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 400,
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter Username",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 400,
                child: TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  onPressed: login,
                  child: Text('Login', style: TextStyle(fontSize: 16)),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                displayText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
