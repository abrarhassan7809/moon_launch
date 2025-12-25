import 'package:flutter/material.dart';
import 'package:moon_launch/widgets/profile_background.dart';

import '../widgets/wallet_chart.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidth = MediaQuery.of(context).size.width;

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
              Row(
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
                  SizedBox(width: 10,),

                  Image.asset('assets/images/close_eye_icon.png',),
                ],
              ),

              Image.asset('assets/images/moon_launch_logo.png', width: 100,
              ),
            ],
          ),
        ),
      ),

      body: ProfileBackground(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_drop_up_sharp,
                          color: Colors.green,
                          size: 30,
                        ),

                        Text(
                          '0.72%',
                          style: TextStyle(
                            fontFamily: 'BernardMTCondensed',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: mqHeight * 0.03,),

              // real time chart
              SizedBox(
                width: mqWidth * 0.9,
                height: 160,
                child: InteractiveViewer(
                  boundaryMargin: const EdgeInsets.all(100),
                  minScale: 1,
                  maxScale: 4,
                  panEnabled: true,
                  scaleEnabled: true,
                  child: WalletChart(),
                ),
              ),
              SizedBox(height: mqHeight * 0.04,),

              // deposit buttons
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
                        child: Icon(Icons.add, size: 28,)
                      ),
                      SizedBox(height: mqHeight * 0.01,),

                      Text(
                        'Buy',
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
                          'assets/images/minus_icons.png',
                          width: 28,
                          height: 28,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: mqHeight * 0.01,),

                      Text(
                        'Sell',
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
                        child: Icon(Icons.arrow_upward, size: 28,)
                      ),
                      SizedBox(height: mqHeight * 0.01,),

                      Text(
                        'Deposit',
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
                        child: Icon(Icons.arrow_downward, size: 28,)
                      ),
                      SizedBox(height: mqHeight * 0.01,),

                      Text(
                        'Withdraw',
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
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
                  ],
                ),
              ),
              SizedBox(height: mqHeight * 0.01,),

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
    );
  }
}
