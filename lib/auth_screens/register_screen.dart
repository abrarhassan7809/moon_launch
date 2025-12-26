import 'package:flutter/material.dart';
import 'package:moon_launch/views/privacy_policy_screen.dart';
import 'package:moon_launch/views/term_condition_screen.dart';
import 'package:moon_launch/widgets/app_background.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool termAndConditions = false;
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final Size mqSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: AppBackground(
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: constraints.maxHeight
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/moon_launch_logo.png',
                          width: mqSize.width*0.7,
                        ),
                        SizedBox(height: mqSize.height*0.06,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.08),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Sign Up',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'BernardMTCondensed',
                                  fontWeight: FontWeight.w400,
                                  fontSize: mqSize.width*0.06,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.01,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.08),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Hello! Enter Your Account details',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Benne',
                                  fontWeight: FontWeight.w400,
                                  fontSize: mqSize.width*0.035,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.02,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.07),
                          child: TextField(
                            decoration: InputDecoration(
                              hint: Text(
                                "Username",
                                style: TextStyle(fontFamily: 'Benne', fontSize: 14),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.5),
                                borderSide: const BorderSide(color: Color(0xFFDB2519)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.01,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.07),
                          child: TextField(
                            decoration: InputDecoration(
                              hint: Text(
                                "Email Address",
                                style: TextStyle(fontFamily: 'Benne', fontSize: 14),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.5),
                                borderSide: const BorderSide(color: Color(0xFFDB2519)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.01,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.07),
                          child: TextField(
                            obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                              hint: Text(
                                "Password",
                                style: TextStyle(fontFamily: 'Benne', fontSize: 14),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.5),
                                borderSide: const BorderSide(color: Color(0xFFDB2519)),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.01,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.07),
                          child: TextField(
                            obscureText: !isConfirmPasswordVisible,
                            decoration: InputDecoration(
                              hint: Text(
                                "Confirm Password",
                                style: TextStyle(fontFamily: 'Benne', fontSize: 14),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.5),
                                borderSide: const BorderSide(color: Color(0xFFDB2519)),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isConfirmPasswordVisible = !isConfirmPasswordVisible;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.03,),

                        Padding(
                          padding: EdgeInsets.only(left: mqSize.width*0.07, right: mqSize.width*0.08),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        termAndConditions = !termAndConditions;
                                      });
                                    },
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: termAndConditions
                                            ? const LinearGradient(
                                          colors: [
                                            Color(0xFFFFE600),
                                            Color(0xFFDB2519),
                                          ],
                                        )
                                            : null,
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 1.5,
                                        ),
                                      ),
                                      child: termAndConditions
                                          ? const Icon(
                                        Icons.check,
                                        size: 12,
                                        color: Colors.white,
                                      )
                                          : null,
                                    ),
                                  ),
                                  SizedBox(width: mqSize.width*0.02),

                                  Text(
                                    'I agree with all ',
                                    style: TextStyle(
                                      fontFamily: 'Benne',
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => TermConditionScreen()),
                                  );
                                },
                                child: ShaderMask(
                                  shaderCallback: (bounds) {
                                    return const LinearGradient(
                                      colors: [
                                        Color(0xFFFFE600),
                                        Color(0xFFDB2519),
                                      ],
                                    ).createShader(bounds);
                                  },
                                  child: Text(
                                    'Terms & Conditions',
                                    style: TextStyle(
                                      fontFamily: 'Benne',
                                      fontSize: 10,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),

                              Text(
                                ' and ',
                                style: TextStyle(
                                  fontFamily: 'Benne',
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => PrivacyPolicyScreen()),
                                  );
                                },
                                child: ShaderMask(
                                  shaderCallback: (bounds) {
                                    return const LinearGradient(
                                      colors: [
                                        Color(0xFFFFE600),
                                        Color(0xFFDB2519),
                                      ],
                                    ).createShader(bounds);
                                  },
                                  child: Text(
                                    'Privacy Policy',
                                    style: TextStyle(
                                      fontFamily: 'Benne',
                                      fontSize: 10,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.04,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: mqSize.height*0.06,
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
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
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
                        SizedBox(height: mqSize.height*0.05,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
                              style: TextStyle(
                                fontFamily: 'BernardMTCondensed',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: ShaderMask(
                                shaderCallback: (bounds) {
                                  return const LinearGradient(
                                    colors: [
                                      Color(0xFFFFE600),
                                      Color(0xFFDB2519),
                                    ],
                                  ).createShader(bounds);
                                },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontFamily: 'Benne',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
