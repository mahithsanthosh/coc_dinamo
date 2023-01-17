import 'package:coc_dynamo/screens/views/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
    // print(FirebaseAuth.instance.currentUser?.email ?? "");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dynamo",
        ),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff222222),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sign up",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: _email,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail, color: Colors.grey),
                        fillColor: Color(0xff323233),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: 'Mail',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(1.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff323233), width: 1.2),
                          borderRadius: BorderRadius.all(Radius.circular(1)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffCE25B1), width: 1.2),
                          borderRadius: BorderRadius.all(Radius.circular(1.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      controller: _password,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password, color: Colors.grey),
                        fillColor: Color(0xff323233),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: 'Password',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(1.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff323233), width: 1.2),
                          borderRadius: BorderRadius.all(Radius.circular(1.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffCE25B1), width: 1.2),
                          borderRadius: BorderRadius.all(Radius.circular(1.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffCE25B1),
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 100)),
                      onPressed: () async {
                        final email = _email.text;
                        final password = _password.text;

                        final newUser = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password);
                        print(FirebaseAuth.instance.currentUser?.email);
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text(
                        'Create Account',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    endIndent: 25,
                    indent: 25,
                    thickness: 1.5,
                    height: 20,
                    color: Color(0xff323233),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text(
                        "Already have an account? Sign in",
                        style: TextStyle(color: Color(0xffCE25B1)),
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
