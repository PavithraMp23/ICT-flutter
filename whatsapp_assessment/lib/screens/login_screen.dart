import 'package:flutter/material.dart';
import 'package:whatsapp/screens/home_screen.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> numbers = ['9990001111', '3333444422', '0000011111'];
  String? inputValue;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? isLoggedIn = prefs.getBool('isLoggedIn');
    final String? savedNumber = prefs.getString('userNumber');

    if (isLoggedIn == true && savedNumber != null) {
      // Navigate to HomeScreen if user is already logged in
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    }
  }

  Future<void> saveLoginInfo(String number) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('userNumber', number);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
          body: DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
              child: Center(
                child: Image(
                    height: 150,
                    width: 150,
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/479px-WhatsApp.svg.png')),
              ),
            ),
            Text(
              'Welcome to whatsapp',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            OtpTextField(
              fieldWidth: 20,
              showFieldAsBox: false,
              fieldHeight: 40,
              mainAxisAlignment: MainAxisAlignment.center,
              focusedBorderColor: Colors.black,
              borderWidth: 3,
              numberOfFields: 10,
              onSubmit: (String verification) {
                inputValue = verification;
                print(inputValue);
              },
            ),
            SizedBox(
              height: 35,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                onPressed: () async {
                  if (numbers.contains(inputValue)) {
                    // Save login info before navigation
                    await saveLoginInfo(inputValue!);

                    if (mounted) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    }
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text('Invalid user credentials'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Ok'))
                              ],
                            ));
                  }
                },
                child: Text('login'),
              ),
            ),
            Text(
                textAlign: TextAlign.center,
                "Read our Privacy Policy. Tap 'agree and \n continue' to accept the Terms of Services "),
            Text(
              'From \n FACEBOOK',
              textAlign: TextAlign.center,
            )
          ],
        ),
      )),
    );
  }
}
