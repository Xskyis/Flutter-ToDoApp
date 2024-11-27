import 'package:first_try/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("nabilfgrza_"),
        // ),
        body: Container(
          padding: EdgeInsets.only(left: 24, right: 24, top: 60),
          color: Colors.white10,
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(
                  'Logo Ipsum',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  'Sign in to your accounts',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text('Enter your email and password to log in',
                  style: TextStyle(fontSize: 14)),
              Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 4),
                  child: const Text(
                    "Email",
                    style: TextStyle(fontSize: 14),
                  )),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)))),
              //Password Section
              Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 4),
                  child: const Text(
                    "Password",
                    style: TextStyle(fontSize: 14),
                  )),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)))),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Homepage();
                  }));
                },
                child: const Text("Login"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    fixedSize: Size(double.maxFinite, 50)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Align(
                  alignment: Alignment.center,
                  child: const Text("Or"),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: OutlinedButton.icon(
                      icon: Icon(
                        Icons.g_mobiledata,
                        color: Colors.red,
                      ),
                      onPressed: () {},
                      label: const Text(
                        "Continue with Google",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          fixedSize: Size(double.maxFinite, 50)))),
              Align(
                  alignment: Alignment.center,
                  child: OutlinedButton.icon(
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                      label: const Text(
                        "Continue with Facebook",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          fixedSize: Size(double.maxFinite, 50))))
            ],
          ),
        ),
      ),
    );
  }
}
