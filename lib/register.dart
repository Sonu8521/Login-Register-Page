import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_page/home.dart';
import 'package:login_register_page/login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();

}

class _MyRegisterState extends State<MyRegister> {
  bool _isChecked = false;

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 100),
            child: Text('Register new \n account', style: GoogleFonts.aBeeZee(fontSize:25),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3,right: 35,left: 35),
              child: Column(
                children: [

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Set border radius
                      color: Colors.grey.shade100, // Set background color
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10.0), // Add padding to the left
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none, // Set border to none
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Set border radius
                      color: Colors.grey.shade100, // Set background color
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10.0), // Add padding to the left
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          hintText: 'Password',
                          border: InputBorder.none, // Set border to none
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                  height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Set border radius
                      color: Colors.grey.shade100, // Set background color
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10.0), // Add padding to the left
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          hintText: 'Password Confirmation',
                          border: InputBorder.none, // Set border to none
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      // const Spacer(),
                      const Text(
                        'By creating an account, you agree to our',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18.0), // Adjust the left padding as needed
                        child: TextButton(
                          onPressed: onPressed,
                          child: const Text(
                            'Term & conditions',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: () {
                      // Navigate to home screen when the register button is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Myhome()), // Navigate to Home screen
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100), // Adjust padding as needed
                      decoration: BoxDecoration(
                        color: Colors.blue, // Background color
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16, // Adjust font size as needed
                          fontWeight: FontWeight.bold, // Make text bold
                        ),
                      ),
                    ),
                  ),


                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyLogin()
                              ),
                            );
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
