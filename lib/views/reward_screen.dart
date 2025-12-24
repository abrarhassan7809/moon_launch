import 'package:flutter/material.dart';
import 'package:moon_launch/widgets/custom_bottom_navbar.dart';
import 'package:moon_launch/widgets/profile_background.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Life time Rewards',
                style: TextStyle(
                  fontFamily: 'Benne',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFC9C9C9),
                ),
              ),

              Image.asset('assets/images/moon_launch_logo.png', width: 100,
              ),
            ],
          ),
        ),
      ),

      body: ProfileBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'BernardMTCondensed',
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: '\$0.00',
                      style: TextStyle(fontSize: 30),
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          'usd',
                          style: TextStyle(
                            fontFamily: 'BernardMTCondensed',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: mqHeight * 0.02,),

            Image.asset('assets/images/reward_coin.png', width: mqWidth, height: 328,),

            Text(
              'Get Paid whenever your family, friends and their friends trade',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Benne',
                fontWeight: FontWeight.w400,
                fontSize: 30,
                color: Color(0xFFC9C9C9),
              ),
            ),
            SizedBox(height: mqHeight * 0.03,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.05),
              child: InkWell(
                onTap: () {},
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: Colors.white, size: 24,),
                      SizedBox(width: 10,),

                      Text(
                        'Invite',
                        style: TextStyle(
                          letterSpacing: -0.3,
                          fontFamily: 'BernardMTCondensed',
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
