import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Day4 extends StatelessWidget {
  const Day4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const headerPage(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 1),
                        blurRadius: 1),
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(-1, -1),
                        blurRadius: 1)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Student Login",
                      style: GoogleFonts.aladin(color: Colors.red,fontWeight: FontWeight.w700,fontSize: 17),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const inputBox(
                      icon: Icons.person,
                      hint: "Enter Username",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const inputBox(
                      icon: Icons.key,
                      hint: "Enter Password",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const buttonWidget(
                      icon: Icons.send,
                      btname: "Login",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const buttonWidget(
                      icon: Icons.g_mobiledata,
                      btname: "Login with Gmail",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(children: const [
                buttonWidget(icon: CupertinoIcons.eye,btname: "Forgot Password",),
                SizedBox(height: 10,),
                buttonWidget(icon: CupertinoIcons.pencil,btname: "Register",)
              ])),
        ],
      ),
    );
  }
}

class buttonWidget extends StatelessWidget {
  final String btname;
  final icon;

  const buttonWidget({
    super.key,
    required this.btname,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xfff5492F0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            btname,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, color: Colors.white),
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class inputBox extends StatelessWidget {
  final icon;
  final hint;

  const inputBox({
    super.key,
    this.icon,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xfff5492F0),
          ),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 1)
          ]),
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Icon(
            icon,
            color: Color(0xfff5492F0),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            hint,
            style: GoogleFonts.poppins(
                fontStyle: FontStyle.italic, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class headerPage extends StatelessWidget {
  const headerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(180),
            bottomLeft: Radius.circular(180)),
        child: Container(
          width: double.infinity,
          height: 320,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
        ),
      ),
      ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(190),
            bottomLeft: Radius.circular(190)),
        child: Container(
          width: double.infinity,
          height: 310,
          decoration: const BoxDecoration(
            color: Color(0xfff5492F0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/lanch.png",
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Islamic University of Science & Technology",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
