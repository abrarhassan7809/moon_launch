import 'package:flutter/material.dart';
import 'package:moon_launch/widgets/profile_background.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mqSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,

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
                  fontSize: mqSize.width*0.045,
                  color: Color(0xFFC9C9C9),
                ),
              ),

              Image.asset(
                'assets/images/moon_launch_logo.png',
                width: mqSize.width*0.3,
              ),
            ],
          ),
        ),
      ),

      body: ProfileBackground(
        child: SafeArea(
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
                        style: TextStyle(fontSize: mqSize.width*0.09),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: Text(
                          'usd',
                          style: TextStyle(
                            fontFamily: 'BernardMTCondensed',
                            fontWeight: FontWeight.w400,
                            fontSize: mqSize.width*0.04,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Image.asset('assets/images/reward_coin.png', height: mqSize.height*0.45,),

              Text(
                'Get Paid whenever your family, friends and their friends trade',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Benne',
                  fontWeight: FontWeight.w400,
                  fontSize: mqSize.width*0.07,
                  color: Color(0xFFC9C9C9),
                ),
              ),
              SizedBox(height: mqSize.height*0.03,),

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
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.white, size: mqSize.width*0.08,),
                        SizedBox(width: 5,),

                        Text(
                          'Invite',
                          style: TextStyle(
                            fontFamily: 'BernardMTCondensed',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: mqSize.width*0.06,
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
      ),
    );
  }
}
