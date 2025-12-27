import 'package:flutter/material.dart';
import 'package:moon_launch/auth_screens/register_screen.dart';
import 'package:moon_launch/views/verify_identity_screen.dart';
import 'package:moon_launch/widgets/app_background.dart';
import 'package:moon_launch/widgets/widget_tree.dart';

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
                        SizedBox(height: mqSize.height*0.12,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.08),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Sign In',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'BernardMTCondensed',
                                  fontWeight: FontWeight.w400,
                                  fontSize: mqSize.width*0.08,
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
                                'Welcome Back! Enter Your Account Details',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Benne',
                                  fontWeight: FontWeight.w400,
                                  fontSize: mqSize.width*0.04,
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
                                "Email Address",
                                style: TextStyle(fontFamily: 'Benne', fontSize: 15),
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
                                style: TextStyle(fontFamily: 'Benne', fontSize: 15),
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
                        SizedBox(height: mqSize.height*0.03,),

                        Padding(
                          padding: EdgeInsets.only(left: mqSize.width*0.07, right: mqSize.width*0.08),
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
                                  SizedBox(width: mqSize.width*0.02),

                                  Padding(
                                    padding: EdgeInsets.only(top: mqSize.height*0.006),
                                    child: Text(
                                      'Remember me',
                                      style: TextStyle(
                                        fontFamily: 'Benne',
                                        fontSize: mqSize.width*0.04,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => VerifyIdentityScreen()),
                                  );
                                },
                                child: ShaderMask(
                                  shaderCallback: (bounds) {
                                    return const LinearGradient(
                                      colors: [Color(0xFFFFE600), Color(0xFFDB2519),],
                                    ).createShader(bounds);
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      fontFamily: 'Benne',
                                      fontSize: mqSize.width*0.04,
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
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => WidgetTree()),
                              );
                            },
                            child: Container(
                              height: mqSize.height*0.07,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xFFFFE600), Color(0xFFDB2519),],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontFamily: 'BernardMTCondensed',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: mqSize.width*0.06,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.06,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account? ',
                              style: TextStyle(
                                fontFamily: 'BernardMTCondensed',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 16,
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
                                    colors: [Color(0xFFFFE600), Color(0xFFDB2519),],
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
