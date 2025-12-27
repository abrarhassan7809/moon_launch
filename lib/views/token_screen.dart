import 'package:flutter/material.dart';
import 'package:moon_launch/views/coin_selection_screen.dart';
import 'package:moon_launch/widgets/profile_background.dart';

class TokenScreen extends StatelessWidget {
  const TokenScreen({super.key});

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

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Create Coin',
              style: TextStyle(
                fontFamily: 'BernardMTCondensed',
                fontWeight: FontWeight.w400,
                fontSize: mqSize.width*0.08,
                color: Colors.white,
              ),
            ),

            Image.asset(
              'assets/images/moon_launch_logo.png',
              width: mqSize.width*0.3,
            ),
          ],
        ),
      ),

      body: ProfileBackground(
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
                        Column(
                          spacing: 10,
                          children: [
                            Container(
                              width: mqSize.height*0.15,
                              height: mqSize.height*0.15,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFFFE600),
                                    Color(0xFFDB2519),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Image.asset(
                                    'assets/images/picture_icon.png',
                                  ),
                                ),
                              ),
                            ),

                            Text(
                              'Select Coin Icon',
                              style: TextStyle(
                                fontFamily: 'Benne',
                                fontWeight: FontWeight.w400,
                                fontSize: mqSize.width*0.045,
                                color: Color(0xFFC9C9C9),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: mqSize.height*0.02,),

                        // input fields
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.07),
                          child: TextField(
                            decoration: InputDecoration(
                              hint: Text(
                                "Coin Name",
                                style: TextStyle(fontFamily: 'Benne', fontSize: 15),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width * 0.5),
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
                                "Symbol",
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
                            maxLines: 5,
                            minLines: 3,
                            keyboardType: TextInputType.multiline,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              hint: Text(
                                "Description...",
                                style: TextStyle(fontFamily: 'Benne', fontSize: 15),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.08),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(mqSize.width*0.08),
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
                                "Total Supply",
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
                            decoration: InputDecoration(
                              hint: Text(
                                "Starting Liquidity (BNB) - min 0.025",
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
                        SizedBox(height: mqSize.height*0.02,),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => CoinSelectionScreen())
                              );
                            },
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
                                  'Submit',
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
            },
          ),
        ),
      ),
    );
  }
}
