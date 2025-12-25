import 'package:flutter/material.dart';
import 'package:moon_launch/auth_screens/otp_screen.dart';
import 'package:moon_launch/widgets/app_background.dart';

class VerifyIdentityScreen extends StatelessWidget {
  const VerifyIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFDB2519).withOpacity(0.2),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: 3),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),

            Image.asset(
              'assets/images/moon_launch_logo.png',
              width: 100,
            ),
          ],
        ),
      ),

      body: AppBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/verification_image.png', height: 310,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.07),
                  child: Row(
                    children: [
                      Text(
                        'Verify Your Identity',
                        style: TextStyle(
                          fontFamily: 'BernardMTCondensed',
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mqHeight * 0.01,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.07),
                  child: Row(
                    children: [
                      Text(
                        'Enter your mail to verify your identity',
                        style: TextStyle(
                          fontFamily: 'Benne',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mqHeight * 0.03,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.07),
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text(
                        "Email Address",
                        style: TextStyle(fontFamily: 'Benne', fontSize: 14),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(mqWidth * 0.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(mqWidth * 0.5),
                        borderSide: const BorderSide(color: Color(0xFFDB2519)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: mqHeight * 0.03,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.05),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => OtpScreen()),
                      );
                    },
                    child: Container(
                      height: mqHeight * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFFE600),
                            Color(0xFFDB2519),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Send Code',
                          style: TextStyle(
                            letterSpacing: -0.3,
                            fontFamily: 'BernardMTCondensed',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
        ),
      ),
    );
  }
}
