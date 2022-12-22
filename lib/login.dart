import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cricket_prediction_app/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

CollectionReference Customers =
    FirebaseFirestore.instance.collection('Customers');

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Get a non-default Storage bucket
  // String datetime = DateFormat("EEEEE, dd").format(DateTime.now());
  String datetime = DateFormat.yMMMMd('en_US').format(DateTime.now());

  final name = TextEditingController();
  final phone = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset('assets/logo.png'),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Welcome to Cricket Prediction 2023 ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Your Name';
                      }
                    },
                    controller: name,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Phone Number ';
                      }
                    },
                    controller: phone,
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number ',
                      hintText: 'Enter Your Phone Number ',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () {
                      // FirebaseFirestore.instance.collection('Customers').add({
                      //   'name': name.text,
                      //   'phone': phone.text,
                      //   'time&date': FieldValue.serverTimestamp()
                      // });
                      check();
                      // setPreferance();
                    },
                    child: Text(
                      'Submit ',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    minWidth: 300,
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void check() {
    if (name.text == "") {
      final snackbar = SnackBar(content: const Text(" Enter Some Text "));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else {
      FirebaseFirestore.instance.collection('Customers').add({
        'name': name.text,
        'phone': phone.text,
        'time&date': FieldValue.serverTimestamp()
      });
      
      setPreferance();
      setState(() {
        Get.to(() => const HomeScreen());
      });
    }
  }

  setPreferance() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString('name', name.text);
    sharedPreferences.setString('phone', phone.text);
  }

}
