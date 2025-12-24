import 'package:flutter/material.dart';
import 'package:moon_launch/auth_screens/register_screen.dart';
import 'package:moon_launch/views/home_screen.dart';
import 'package:moon_launch/widgets/app_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    late final mqHeight = MediaQuery.of(context).size.height;
    late final mqWidth = MediaQuery.of(context).size.width;

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
                          width: mqWidth * 0.7,
                        ),
                        SizedBox(height: mqHeight * 0.06,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.08),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Sign In',
                                textAlign: TextAlign.left,
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
                          padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.08),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome Back! Enter Your Account Details',
                                textAlign: TextAlign.left,
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
                        SizedBox(height: mqHeight * 0.02,),

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
                        SizedBox(height: mqHeight * 0.01,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.07),
                          child: TextField(
                            obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                              hint: Text(
                                "Password",
                                style: TextStyle(fontFamily: 'Benne', fontSize: 14),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqWidth * 0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqWidth * 0.5),
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
                        SizedBox(height: mqHeight * 0.03,),

                        Padding(
                          padding: EdgeInsets.only(left: mqWidth * 0.07, right: mqWidth * 0.08),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        rememberMe = !rememberMe;
                                      });
                                    },
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: rememberMe
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
                                      child: rememberMe
                                          ? const Icon(
                                        Icons.check,
                                        size: 12,
                                        color: Colors.white,
                                      )
                                          : null,
                                    ),
                                  ),
                                  SizedBox(width: mqWidth * 0.02),

                                  Text(
                                    'Remember me',
                                    style: TextStyle(
                                      fontFamily: 'Benne',
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              GestureDetector(
                                onTap: () {},
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
                                    'Forgot Password?',
                                    style: TextStyle(
                                      fontFamily: 'Benne',
                                      fontSize: 12,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: mqHeight * 0.04,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.05),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => HomeScreen()),
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
                                  'Login',
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
                        SizedBox(height: mqHeight * 0.15,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account? ',
                              style: TextStyle(
                                fontFamily: 'BernardMTCondensed',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => RegisterScreen())
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
                                  'Sign Up',
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
