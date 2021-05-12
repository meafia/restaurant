import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/components/input-text.dart';
import 'package:resturant/pages/menu.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/login.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Container(
                width: 300,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Log In',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    InputTextField(
                      fieldLabel: 'Email',
                      icon: Icons.email,
                    ),
                    InputTextField(
                      fieldLabel: 'Password',
                      icon: Icons.lock,
                      suffix: true,
                      obscureText: true,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return MenuPage();
                        }));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF5d55b4)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: SizedBox(
                        width: 300,
                        height: 40,
                        child: Center(
                          child: Text(
                            'log in',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
