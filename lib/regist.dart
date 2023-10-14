import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'main.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "page_login": (context) => LoginPage(),
    },
  ));
}

class RegistPage extends StatefulWidget {
  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  // const RegistPage({super.key});
  var isChecked = false;
  var t1 = TextEditingController();

  var t2 = TextEditingController();

  var t3 = TextEditingController();

  var t4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Register"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 10, right: 350, left: 350),
        child: Column(
          children: [
            //Image.asset("img/kalilinux.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: t1,
                // maxLength: 25,
                decoration: InputDecoration(
                  hintText: "Masukan Nama Lengkap Anda",
                  labelText: "Nama Lengkap",
                  prefixIcon: Icon(Icons.emoji_people), //awalan
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
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: t2,
                // maxLength: 10,
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
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                controller: t3,
                // maxLength: 10,
                decoration: InputDecoration(
                  hintText: "Masukan Password Anda",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password_outlined), //awalan
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
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: t4,
                // maxLength: 10,
                decoration: InputDecoration(
                  hintText: "Masukan Nomor HP Anda",
                  labelText: "Nomor HP",
                  prefixIcon: Icon(Icons.smartphone), //awalan
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
                      color: Colors.purpleAccent,
                    ),
                  ),
                ),
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                isChecked = value!;
                setState(() {});
              },
            ),
            Text("Saya menyetujui syarat dan ketentuan yang berlaku"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  var value = t1.text;
                  if (value.isEmpty) {
                    Fluttertoast.showToast(msg: "Nama Harus Diisi");
                  } else if (value.length < 5) {
                    Fluttertoast.showToast(msg: "Minimal nama 5 karakter");
                  } else if (value.length > 30) {
                    Fluttertoast.showToast(msg: "Maksimal nama 30 karakter");
                  }

                  var value2 = t2.text;
                  if (value2.isEmpty) {
                    Fluttertoast.showToast(msg: "Email Harus Diisi");
                  } else if (value2.length < 5) {
                    Fluttertoast.showToast(msg: "Minimal email 5 karakter");
                  } else if (value2.length > 30) {
                    Fluttertoast.showToast(msg: "Maksimal email 30 karakter");
                  } else if (value2.contains("@") == false &&
                      value.contains(".") == false) {
                    Fluttertoast.showToast(msg: "Tolong check email Anda");
                  }

                  var value3 = t3.text;
                  if (value3.isEmpty) {
                    Fluttertoast.showToast(msg: "Password harus diisi");
                  } else if (value3.length < 5) {
                    Fluttertoast.showToast(msg: "Minimal password 5 karakter");
                  } else if (value3.length > 20) {
                    Fluttertoast.showToast(
                        msg: "Maksimal password 20 karakter");
                  }

                  var value4 = t4.text;
                  if (value4.isEmpty) {
                    Fluttertoast.showToast(msg: "Nomor HP harus diisi");
                  } else if (value4.length > 15) {
                    Fluttertoast.showToast(
                        msg: "Maksimal password 15 karakter");
                  } else {
                    Fluttertoast.showToast(msg: "SignUp berhasil");
                    Navigator.pushNamed(context, "page_login");
                  }
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
