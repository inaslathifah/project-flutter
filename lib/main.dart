import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'regist.dart';

//pertemuan 01 flutter 09 okt 2023
// materi ....

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    routes: {
      "page_dashboard": (context) => DashboardPage(),
      "page_login": (context) => LoginPage(),
      "page_regist": (context) => RegistPage(),
    },
  ));
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(
            //           top: 150, bottom: 150, right: 5, left: 10),
            //       child: Icon(Icons.home),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(
            //           top: 150, bottom: 150, right: 5, left: 0),
            //       child: Text("Home"),
            //     ),
            //   ],
            // ),

            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pushNamed(context, "page_dashboard");
                }),

            ListTile(
                leading: Icon(Icons.people),
                title: Text("About"),
                onTap: () {
                  Fluttertoast.showToast(msg: "Created by Inas @ 2023");
                }),

            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pushNamed(context, "page_login");
                }),
          ],
        ),
      ),
      //drawer seperti Laci, maksudnya kalau kita klik akan muncul
      //beberapa pilihan, simbolnya garis 3
      body: Text("Welcome to MyApp"),
    );
  }
}

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});
  var t1 = TextEditingController();
  var t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        // actions: [
        //   Icon(Icons.help),
        // ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 10, right: 350, left: 350),
        child: Column(
          children: [
            //Image.asset("img/kalilinux.jpg"),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 10, right: 50, left: 50),
              child: Image.asset(
                "img/logo.png",
                width: 350,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextFormField(
                controller: t1,
                // maxLength: 25,
                decoration: InputDecoration(
                  hintText: "Masukan Email Anda",
                  labelText: "Email Address",
                  prefixIcon: Icon(Icons.email), //awalan
                  suffixIcon: Icon(Icons.check), //akhiran
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextFormField(
                obscureText: true,
                controller: t2,
                // maxLength: 10,
                decoration: InputDecoration(
                  hintText: "Masukan Password Anda",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password), //awalan
                  suffixIcon: Icon(Icons.check), //akhiran
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  //print("Button Ditekan");
                  var value = t1.text;

                  //1. harus di isi
                  //2. minimal 5 karakter
                  //3. maksimal 30 karakter
                  if (value.isEmpty) {
                    Fluttertoast.showToast(msg: "Email harus diisi");
                  } else if (value.length < 5) {
                    Fluttertoast.showToast(msg: "Minimal email 5 karakter");
                  } else if (value.length > 30) {
                    Fluttertoast.showToast(msg: "Maksimal email 30 karakter");
                  } else if (value.contains("@") == false &&
                      value.contains(".") == false) {
                    Fluttertoast.showToast(msg: "Tolong check email Anda");
                  }

                  var value2 = t2.text;
                  //1. password harus diisi
                  //2. minimal 5 karakter
                  //3. maksimal 20 karakter
                  if (value2.isEmpty) {
                    Fluttertoast.showToast(msg: "Password harus diisi");
                  } else if (value2.length < 5) {
                    Fluttertoast.showToast(msg: "Minimal password 5 karakter");
                  } else if (value2.length > 20) {
                    Fluttertoast.showToast(
                        msg: "Maksimal password 30 karakter");
                  } else {
                    Fluttertoast.showToast(msg: "Login berhasil");
                    Navigator.pushNamed(context, "page_dashboard");
                  }
                },
                child: Text("Submit"),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "page_regist");
              },
              child: Text("Signup"),
            ),
          ],
        ),
      ),
    );
  }
}

// widget
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //aplikasi
      home: Scaffold(
        // 1 halaman
        appBar: AppBar(
          title: Text(
            "Flutter Apps",
          ),
          backgroundColor: Color.fromARGB(255, 136, 193, 240),
        ),
        body: Column(
          //column dari atas ke bawah , row dari kiri ke kanan
          children: [
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Welcome to my apps",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: EdgeInsets.only(top: 14, bottom: 12),
              child: Text("Hello Flutter"),
            ),
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: EdgeInsets.only(top: 12, bottom: 10),
              child: Text("Thank you"),
            ),
            Icon(
              Icons.apps,
            ),
            Padding(
              //padding: const EdgeInsets.all(8.0),
              padding: EdgeInsets.only(right: 100, left: 100),
              child: TextFormField(),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
