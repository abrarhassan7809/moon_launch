import 'package:flutter/material.dart';
import 'package:moon_launch/widgets/app_background.dart';

class CoinSelectionScreen extends StatelessWidget {
  const CoinSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mqSize = MediaQuery.of(context).size;

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
              width: mqSize.width*0.3,
            ),
          ],
        ),
      ),

      body: AppBackground(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05, vertical: mqSize.height*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select Coin Color',
                      style: TextStyle(
                        fontFamily: 'BernardMTCondensed',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: mqSize.width*0.08,
                      ),
                    ),

                    Icon(
                      Icons.share,
                      color: Color(0xFFFFE600),
                      size: mqSize.width*0.07,
                    ),
                  ],
                ),
              ),
              SizedBox(height: mqSize.height*0.03,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Row 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Color(0xFFDB2519),
                            ),
                            color: Color(0xFFDB2519).withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.lightGreen,
                            ),
                            color: Colors.lightGreen.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Color(0xFFFFE600),
                            ),
                            color: Color(0xFFFFE600).withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.pink,
                            ),
                            color: Colors.pink.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),

                    /// Row 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.brown,
                            ),
                            color: Colors.brown.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.lightGreen,
                            ),
                            color: Colors.lightGreen.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.white,
                            ),
                            color: Colors.white.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.green,
                            ),
                            color: Colors.green.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),

                    /// Row 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.blue,
                            ),
                            color: Colors.blue.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.deepOrangeAccent,
                            ),
                            color: Colors.deepOrangeAccent.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.lightBlue,
                            ),
                            color: Colors.lightBlue.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.brown,
                            ),
                            color: Colors.brown.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),

                    /// Row 4
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.blueAccent,
                            ),
                            color: Colors.blueAccent.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.yellowAccent,
                            ),
                            color: Colors.yellowAccent.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.grey,
                            ),
                            color: Colors.grey.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.redAccent,
                            ),
                            color: Colors.redAccent.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),

                    /// Row 5
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.redAccent,
                            ),
                            color: Colors.redAccent.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.white54,
                            ),
                            color: Colors.white54.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Colors.teal,
                            ),
                            color: Colors.teal.withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),

                        Container(
                          height: mqSize.height*0.09,
                          width: mqSize.height*0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 5,
                              color: Color(0xFFFFE600),
                            ),
                            color: Color(0xFFFFE600).withOpacity(0.8),
                          ),
                          child: Image.asset('assets/images/mini_rocket.png',),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: mqSize.height*0.05,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: mqSize.height*0.07,
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
                        'Select',
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
            ],
          ),
        ),
      ),
    );
  }
}

