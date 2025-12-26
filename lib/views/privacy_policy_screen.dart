import 'package:flutter/material.dart';
import '../widgets/app_background.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
                  color: const Color(0xFFDB2519).withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),

            Image.asset(
              'assets/images/moon_launch_logo.png',
              width: mqSize.width*0.25,
            ),
          ],
        ),
      ),

      body: AppBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05, vertical: mqSize.height*0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontFamily: 'BernardMTCondensed',
                    fontWeight: FontWeight.w400,
                    fontSize: mqSize.width*0.06,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: mqSize.height*0.02),

                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      '''
Welcome to Moon Launch! By using our app, you agree to the following terms and conditions:

1. **Use of the App:** You agree to use this app only for lawful purposes. Unauthorized access or use of the app's services is prohibited.

2. **Account Registration:** Users must provide accurate information during registration. You are responsible for maintaining the confidentiality of your account credentials.

3. **Transactions & Wallet:** All wallet operations are your responsibility. Moon Launch is not liable for any financial losses due to user error.

4. **Content:** All content provided within the app is for informational purposes only. Users should verify information before making decisions.

5. **Privacy:** Your personal information is handled according to our Privacy Policy. You consent to our data collection practices when using the app.

6. **Changes to Terms:** We reserve the right to update these terms at any time. Continued use of the app constitutes acceptance of the updated terms.

7. **Liability:** Moon Launch is not responsible for any indirect, incidental, or consequential damages arising from the use of the app.

8. **Governing Law:** These terms are governed by the laws of your country of residence.

For full details, please visit our official website or contact our support team.

Thank you for using Moon Launch.
                      ''',
                      style: TextStyle(
                        fontFamily: 'Benne',
                        fontWeight: FontWeight.w400,
                        fontSize: mqSize.width*0.035,
                        color: Colors.white,
                        height: 1.6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
