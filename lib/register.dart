import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        //height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xFF1B5E20),
              Color(0xFF689F38),
              Color(0xFF9CCC65),
            ])),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset('images/lectro.png'),
            SizedBox(
              height: 15,
            ),
            // Text('Lectro',
            //     style: TextStyle(
            //       color: Colors.blueGrey.shade100,
            //       fontSize: 30,
            //     )),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 480,
              width: 425,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Register here!',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please complete this from before using this app',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        suffixIcon: Icon(FontAwesomeIcons.user, size: 17),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Address',
                        suffixIcon: Icon(FontAwesomeIcons.home, size: 17),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        suffixIcon: Icon(FontAwesomeIcons.phone, size: 17),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        suffixIcon: Icon(FontAwesomeIcons.envelope, size: 17),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: Icon(FontAwesomeIcons.eyeSlash, size: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF1B5E20),
                                  Color(0xFF689F38),
                                  Color(0xFF9CCC65),
                                ])),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    ));
  }
}
