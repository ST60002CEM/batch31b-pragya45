import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    // Media query screen ko size anusar
    var screenSize = MediaQuery.of(context).size;

    double logoSize = screenSize.width * 1;

//dynamic padding ho
    double horizontalPadding = screenSize.width * 0.1;
    double verticalPadding = screenSize.height * 0.02;

    return Scaffold(
      backgroundColor: const Color(0xFFFFB9E5),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: screenSize.height,
          ),
          child: IntrinsicHeight(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding, vertical: verticalPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Spacer(),
                    Text(
                      'Discover your inner radiance',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.06,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: screenSize.height * 0.05),
                    Image.asset(
                      'assets/images/logo1.png',
                      height: logoSize,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: verticalPadding),
                      child: ElevatedButton(
                        onPressed: () {
                          //  navigation for sign in
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          minimumSize: Size(screenSize.width * 0.8, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text('SIGN IN'),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        //  navigation for sign up
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black),
                        minimumSize: Size(screenSize.width * 0.8, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text('SIGN UP'),
                    ),
                    SizedBox(height: screenSize.height * 0.05),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
