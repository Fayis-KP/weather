import 'package:flutter/material.dart';
import 'package:weather/screens/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
      Stack(
        children: [
          Image.asset(
            "assets/img.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 84,
              left: 30,
            ),
            child: Text(
              "SMART",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 117,
              left: 75,
            ),
            child: Text(
              "WEATHER",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(107),
                  topRight: Radius.circular(107),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.black54,
                    Colors.black54,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  top: 45,
                  right:40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "sign into",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "mange your device & accessory",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email, color: Colors.white),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white54,
                        fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.lock, color: Colors.white),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white54,
                        fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          ),

                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Text(
                        "don’t have an account yet?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                      Center(
                        child: Text(
                          "Create an Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),


                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 10,
            child: Icon(
              Icons.menu,
              size: 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
      ),
    );
  }
}
