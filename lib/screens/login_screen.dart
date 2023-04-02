import 'package:flutter/material.dart';
import '../widgets/login_textfield.dart';
import '../widgets/login_button.dart';
import '../widgets/third_party_wrap.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void userLogIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.supervisor_account,
                size: 150,
                color: Colors.green,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Data Agents Login',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: 25,
              ),
              LoginTextField(
                loginTextEditingController: usernameController,
                loginHintText: 'Username',
                loginObscureText: false,
              ),
              LoginTextField(
                loginTextEditingController: passwordController,
                loginHintText: 'Password',
                loginObscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.green[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              LoginButton(
                onTap: userLogIn,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.8,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Third Party Login",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.8,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ThirdPartyWrap(
                      imageLoc: 'assets/images/google_logo.png',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ThirdPartyWrap(
                      imageLoc: 'assets/images/facebook_logo.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
