import 'package:cricket_prediction_app/login.dart';
import 'package:cricket_prediction_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String datetime = DateFormat("EEEEE, dd").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: const Text("Cricket Prediction "),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () async {
                  final SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.remove('name');
                  sharedPreferences.remove('phone');
                  Get.to(() => LoginScreen());
                },
                icon: Icon(Icons.logout)),
          )
        ],
      ),
      body: ColoredBox(
        color: Colors.blueGrey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Hie User ",
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Text(
                  "$datetime",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 500,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              width: 150,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () {
                                    launchUrl(
                                        Uri.parse(
                                            'https://wa.me/+919503773632?text=Hello%20Need%20Prediction%20Information'),
                                        mode: LaunchMode.externalApplication);
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.whatsapp,
                                        size: 80,
                                        color: Colors.green[500],
                                      ),
                                      const Text("Whatsapp",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16))
                                    ],
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              width: 150,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () {
                                    var phoneNumber =
                                        Uri.parse("tel://9503773632");
                                    launchUrl(phoneNumber);
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.phone_outlined,
                                        size: 80,
                                        color: Colors.blue[500],
                                      ),
                                      const Text("Contact Us",
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 16))
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              width: 150,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 430,
                                          color: Colors.white,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Center(
                                                child: Image.asset(
                                                  'assets/logo.png',
                                                  height: 150,
                                                  width: 150,
                                                ),
                                              ),
                                              const Center(
                                                child: Text(
                                                  "Privacy & Policy ",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.amber,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Text(
                                                  " ♦️ We do not use to Store any kind of user Information such as Phone Number, Mail, Name, Banking Details & Address. ",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Text(
                                                  " ♦️ We Are not providing any kind of paid services to users . ",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Text(
                                                  " ♦️ User have to make sure read this policy carefully before using this application. ",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Text(
                                                  " ♦️ We are only information provider ",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.privacy_tip_outlined,
                                        size: 80,
                                        color: Colors.red[500],
                                      ),
                                      const Text("Privacy Policy",
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 16))
                                    ],
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: 150,
                              width: 150,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 350,
                                          color: Colors.white,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Center(
                                                child: Image.asset(
                                                  'assets/logo.png',
                                                  height: 150,
                                                  width: 150,
                                                ),
                                              ),
                                              const Center(
                                                child: Text(
                                                  "Cricket Prediction  ",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.amber,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Text(
                                                  "One of the best prediction app on the Google Play Store.",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20,
                                                      color:
                                                          Colors.greenAccent),
                                                ),
                                              ),
                                              Center(
                                                child: SizedBox(
                                                  width: 150,
                                                  child: ElevatedButton(
                                                      style: const ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStatePropertyAll(
                                                                  Colors
                                                                      .blueGrey)),
                                                      onPressed: () {
                                                        var phoneNumber = Uri.parse(
                                                            "tel://9503773632");
                                                        launchUrl(phoneNumber);
                                                      },
                                                      child: Row(
                                                        children: const [
                                                          Icon(Icons.call),
                                                          Text(
                                                            "Contact Us ",
                                                          )
                                                        ],
                                                      )),
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        size: 80,
                                        color: Colors.amber[500],
                                      ),
                                      const Text("About Us",
                                          style: TextStyle(
                                              color: Colors.amber,
                                              fontSize: 16))
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
