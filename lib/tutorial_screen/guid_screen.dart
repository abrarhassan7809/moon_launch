import 'package:flutter/material.dart';
import 'package:moon_launch/auth_screens/login_screen.dart';
import 'package:moon_launch/widgets/app_background.dart';

class GuidScreen extends StatefulWidget {
  const GuidScreen({super.key});

  @override
  State<GuidScreen> createState() => _GuidScreenState();
}

class _GuidScreenState extends State<GuidScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _pages = [
    {
      "image": "assets/images/moon_launch_roc.png",
      "title": "Launch Your Own Meme Coin",
      "description": "Create, trade, and grow your crypto idea in minutes, powered by BNB"
    },
    {
      "image": "assets/images/hand_coin.png",
      "title": "Create a Coin in Minutes",
      "description": "Name your meme coin, set supply, and deploy instantly on Binance Smart Chain"
    },
    {
      "image": "assets/images/coin_image.png",
      "title": "Trade Your Coin Freely",
      "description": "Buy and sell your coin using BNB with real-time charts and instant swaps"
    },
    {
      "image": "assets/images/coins_image.png",
      "title": "Turn Hype Into Earnings",
      "description": "Withdraw your profits anytime directly through BNB with full control"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Size mqSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      extendBody: true,

      body: AppBackground(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                'assets/images/moon_launch_logo.png',
                width: mqSize.width*0.5,
              ),

              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _pages.length,
                  onPageChanged: (index) {
                    setState(() => _currentIndex = index);
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: mqSize.height*0.45,
                          child: Image.asset(
                            _pages[index]['image']!,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            _pages.length,
                                (index) => _buildDot(index),
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.01),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.15),
                          child: Text(
                            _pages[index]['title']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: mqSize.width*0.09,
                              fontFamily: 'BernardMTCondensed',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: mqSize.height*0.01),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.1),
                          child: Text(
                            _pages[index]['description']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: mqSize.width*0.04,
                              fontFamily: 'Benne',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05),
                child: InkWell(
                  onTap: () {
                    if (_currentIndex == _pages.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                      );
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Container(
                    height: mqSize.height*0.06,
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
                        _currentIndex == _pages.length-1 ? 'Continue' : 'Skip',
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
              SizedBox(height: mqSize.height*0.03,)

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    final bool isActive = _currentIndex == index;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 8,
      width: isActive ? 22 : 8,
      decoration: BoxDecoration(
        gradient: isActive
            ? const LinearGradient(
          colors: [Color(0xFFFFE600), Color(0xFFDB2519),],
        )
            : null,
        color: isActive ? null : Colors.grey.shade600,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
