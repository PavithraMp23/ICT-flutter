import 'package:flutter/material.dart';
import 'package:instgram_test/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image(
                    /*Container kond=> child: image.nework*/
                    height: 80,
                    image: AssetImage('images/Instagram_logo.svg.png')),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffE8E8E8),
                      contentPadding: const EdgeInsets.all(10.0),
                      enabledBorder: OutlineInputBorder(
                        //verum border upyogicha, default state aarikum apply akune
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(
                              60, 0, 0, 0), // Apply the color here
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(
                              120, 0, 0, 0), // Slightly darker for focus
                          width: 1.5,
                        ),
                      ),
                      hintText: 'Phone number, username or email address',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 15)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffE8E8E8),
                      contentPadding: const EdgeInsets.all(10.0),
                      enabledBorder: OutlineInputBorder(
                        //verum border upyogicha, default state aarikum apply akune
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(
                              60, 0, 0, 0), // Apply the color here
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(
                              120, 0, 0, 0), // Slightly darker for focus
                          width: 1.5,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 15)),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 40,
                width: 800,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        foregroundColor:
                            const Color.fromARGB(255, 236, 229, 229),
                        backgroundColor:
                            const Color.fromARGB(255, 63, 125, 231)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    child: const Text('login')),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    //expands the particular child to fill the space.
                    child: Divider(
                      color: Colors.black38,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
              const Text('Sign in with facebook'),
              const Divider(
                thickness: 1,
                color: Colors.black38,
              ),
              const Text('Dont have an account? Sign up'),
            ],
          ),
        ),
      ),
    );
  }
}
