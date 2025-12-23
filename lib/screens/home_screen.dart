import 'package:flutter/material.dart';

import '../widgets/custom_bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    // TODO: handle navigation
  }

  @override
  Widget build(BuildContext context) {
    late final mqHeight = MediaQuery.of(context).size.height;
    late final mqWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/moon_launch_logo.png',
          width: 100,
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Color(0xFFFFE600),),
          ),
        ],

      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: mqHeight * 0.03),
          child: Column(
            children: [
              Text(
                'Total Wallet Value',
                style: TextStyle(
                  fontFamily: 'Benne',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFC9C9C9),
                ),
              ),
              SizedBox(height: mqHeight * 0.01,),

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
              SizedBox(height: mqHeight * 0.03,),

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
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Deposit',
                            style: TextStyle(
                              fontFamily: 'BernardMTCondensed',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_upward, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: mqWidth * 0.03,),

                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFFE600),
                          Color(0xFFDB2519)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Withdraw',
                              style: TextStyle(
                                fontFamily: 'BernardMTCondensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
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
              SizedBox(height: mqHeight * 0.03,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Color(0xFF3F3228),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          'assets/images/coin_Icons.png',
                          width: 28,
                          height: 28,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: mqHeight * 0.01,),

                      Text(
                        'Earn',
                        style: TextStyle(
                          fontFamily: 'Benne',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFFC9C9C9),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: mqWidth * 0.05,),

                  Column(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Color(0xFF3F3228),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          'assets/images/bell_Icons.png',
                          width: 28,
                          height: 28,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: mqHeight * 0.01,),

                      Text(
                        'Price Alert',
                        style: TextStyle(
                          fontFamily: 'Benne',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFFC9C9C9),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mqHeight * 0.03,),

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
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),

                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [
                            Color(0xFFFFE600),
                            Color(0xFFDB2519),
                          ],
                        ).createShader(bounds);
                      },
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          fontFamily: 'Benne',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: mqHeight * 0.01),

              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: mqWidth * 0.04),
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
                          SizedBox(width: mqWidth * 0.02),

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

      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }
}
