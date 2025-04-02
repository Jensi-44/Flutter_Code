import 'package:flutter/material.dart';
import 'package:practical7/Pages/Signup.dart';

void main() {
  runApp(MaterialApp(home: LoginPage()));
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  String displayText = "";

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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Signup()));
                      },
                      child: Text("Login"))),
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
