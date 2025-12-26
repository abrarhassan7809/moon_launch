import 'package:flutter/material.dart';
import 'package:moon_launch/views/activity_screen.dart';
import 'package:moon_launch/views/reward_screen.dart';
import 'package:moon_launch/widgets/profile_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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

        title: Image.asset(
          'assets/images/moon_launch_logo.png',
          width: mqSize.width*0.25,
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Color(0xFFFFE600),),
          ),
        ],

      ),

      body: ProfileBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: mqSize.height*0.03,),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Total Wallet Value',
                    style: TextStyle(
                      fontFamily: 'Benne',
                      fontWeight: FontWeight.w400,
                      fontSize: mqSize.width*0.045,
                      color: Color(0xFFC9C9C9),
                    ),
                  ),
                  SizedBox(height: mqSize.height*0.01,),

                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'BernardMTCondensed',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: '\$7,765,431',
                          style: TextStyle(fontSize: mqSize.width*0.085),
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: Text(
                            'usd',
                            style: TextStyle(
                              fontFamily: 'BernardMTCondensed',
                              fontWeight: FontWeight.w400,
                              fontSize: mqSize.width*0.035,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: mqSize.height*0.03,),

                  // deposit buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFFE600),
                              Color(0xFFDB2519)
                            ],
                          ),
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: mqSize.width*0.07,
                              vertical: mqSize.height*0.023,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Deposit',
                                style: TextStyle(
                                  fontFamily: 'BernardMTCondensed',
                                  fontWeight: FontWeight.w400,
                                  fontSize: mqSize.width*0.045,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_upward, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: mqSize.width*0.03,),

                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFFE600),
                              Color(0xFFDB2519)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide.none,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: mqSize.width*0.062,
                                vertical: mqSize.height*0.02,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Withdraw',
                                  style: TextStyle(
                                    fontFamily: 'BernardMTCondensed',
                                    fontWeight: FontWeight.w400,
                                    fontSize: mqSize.width*0.045,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_downward, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: mqSize.height*0.03,),

                  // earning buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => RewardScreen()),
                              );
                            },
                            child: Container(
                              height: mqSize.height*0.095,
                              width: mqSize.height*0.095,
                              decoration: BoxDecoration(
                                color: Color(0xFF3F3228),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset(
                                'assets/images/coin_Icons.png',
                                width: mqSize.height*0.095,
                                height: mqSize.height*0.095,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: mqSize.height*0.01,),

                          Text(
                            'Earn',
                            style: TextStyle(
                              fontFamily: 'Benne',
                              fontWeight: FontWeight.w400,
                              fontSize: mqSize.width*0.035,
                              color: Color(0xFFC9C9C9),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: mqSize.width*0.05,),

                      Column(
                        children: [
                          Container(
                            height: mqSize.height*0.095,
                            width: mqSize.height*0.095,
                            decoration: BoxDecoration(
                              color: Color(0xFF3F3228),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(
                              'assets/images/bell_Icons.png',
                              width: mqSize.height*0.095,
                              height: mqSize.height*0.095,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: mqSize.height*0.01,),

                          Text(
                            'Price Alert',
                            style: TextStyle(
                              fontFamily: 'Benne',
                              fontWeight: FontWeight.w400,
                              fontSize: mqSize.width*0.035,
                              color: Color(0xFFC9C9C9),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: mqSize.height*0.03,),

                  // top coins list
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Coins',
                          style: TextStyle(
                            fontFamily: 'Benne',
                            fontWeight: FontWeight.w400,
                            fontSize: mqSize.width*0.047,
                            color: Colors.white,
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => ActivityScreen())
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
                              'See All',
                              style: TextStyle(
                                fontFamily: 'Benne',
                                fontWeight: FontWeight.w400,
                                fontSize: mqSize.width*0.047,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: mqSize.height*0.01),

                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.04),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                            border: Border(top: BorderSide(width: 1.0, color: Color(0xFFCDCDCD)),),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/bit_coin.png'),
                              SizedBox(width: mqSize.width*0.02),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'MemeCoin1',
                                      style: TextStyle(
                                        fontFamily: 'BernardMTCondensed',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 2),

                                    Text(
                                      'Value',
                                      style: TextStyle(
                                        fontFamily: 'Benne',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFFC9C9C9),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$43,250',
                                    style: TextStyle(
                                      fontFamily: 'BernardMTCondensed',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up_sharp,
                                        color: Colors.green,
                                      ),

                                      Text(
                                        '0.67%',
                                        style: TextStyle(
                                          fontFamily: 'BernardMTCondensed',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
