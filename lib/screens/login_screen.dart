import 'package:flutter/material.dart';
import 'package:event_app/widgets/login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      // backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.all(16),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/login_logo.png')),
              const Text(
                'Let\'s you in',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const LoginWidget(
                text: 'Continue with Facebook',
                icon: Icons.facebook,
                color: Colors.blue,
              ),
              const LoginWidget(
                text: 'Continue with Google',
                icon: Icons.g_mobiledata_outlined,
                color: Colors.red,
              ),
              const LoginWidget(
                text: 'Continue with Apple',
                icon: Icons.apple,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: const [
                  Expanded(
                      child: Divider(
                    thickness: 1,
                  )),
                  Text('or'),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                  )),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 32),
                padding: const EdgeInsets.symmetric(vertical: 16),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  border: Border.all(color: Colors.indigoAccent),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'Sign in With Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: const [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 15, color: Colors.indigoAccent),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
