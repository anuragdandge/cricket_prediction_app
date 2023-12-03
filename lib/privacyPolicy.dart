import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              " ♦️ Who we are ",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " Best App for Cricket Prediction We provide 90% to 95% Sure Accuracy Match Predication \n \n We have a Professional Cricket Prediction provider who has more than 9 years of experience in this field. They research each and every match before adding Cricket Prediction. \n \n This is provides cricket match information based on news and by pitch report.",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " ♦️ Privacy Policy ",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " Your Information will be kept private. We never sell any emails or mobile or our app data to anyone.",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " ♦️  What information we collect ",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " We don't gather too much information. We get only your name in case sign up for alerts. \n\n When you contact us through Whatsapp the we store/save your mobile number. However we never share these details with anyone.",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " ♦️  Disclaimer ",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " You win or lose. You will be responsible. Our app is only for 18+ and where betting is legal. If Cricket Betting is illegal in your state or country . Please Uninstall this app Immediately. ",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
