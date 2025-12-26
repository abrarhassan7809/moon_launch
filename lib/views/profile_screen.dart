import 'package:flutter/material.dart';
import 'package:moon_launch/views/edit_profile_screen.dart';
import 'package:moon_launch/widgets/profile_background.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool startNotification = false;

  @override
  Widget build(BuildContext context) {
    final Size mqSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,

      body: ProfileBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: mqSize.height*0.09),
            child: Column(
              children: [
                Column(
                  spacing: 10,
                  children: [
                    Container(
                      width: mqSize.height*0.16,
                      height: mqSize.height*0.16,
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
                            borderRadius: BorderRadius.circular(98),
                          ),
                          child: Image.asset(
                            'assets/images/profile_image.png',
                          ),
                        ),
                      ),
                    ),

                    Text(
                      'Robert Jhonson',
                      style: TextStyle(
                        fontFamily: 'BernardMTCondensed',
                        fontWeight: FontWeight.w400,
                        fontSize: mqSize.width*0.042,
                        color: Color(0xFFC9C9C9),
                      ),
                    ),

                    Text(
                      'Robertjhonson@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Benne',
                        fontWeight: FontWeight.w400,
                        fontSize: mqSize.width*0.042,
                        color: Color(0xFFC9C9C9),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mqSize.height*0.03,),

                Column(
                  children: [
                    SwitchListTile.adaptive(
                      title: Text(
                        "Notifications",
                        style: TextStyle(
                          fontFamily: 'Benne',
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: mqSize.width*0.042,
                        ),
                      ),
                      value: startNotification,
                      activeColor: Color(0xFFDB2519),
                      activeTrackColor: Color(0xFFDB2519).withOpacity(0.4),
                      inactiveThumbColor: Color(0xFFDB2519),
                      inactiveTrackColor: Color(0xFFDB2519).withOpacity(0.2),
                      onChanged: (bool value) {
                        setState(() {
                          startNotification = !startNotification;
                        });
                      },
                    ),
                    SizedBox(height: mqSize.height*0.02,),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => EditProfileScreen()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontFamily: 'Benne',
                                fontWeight: FontWeight.w400,
                                fontSize: mqSize.width*0.042,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: mqSize.width*0.045,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: mqSize.height*0.04,),

                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text(
                              'Help Center',
                              style: TextStyle(
                                fontFamily: 'Benne',
                                fontWeight: FontWeight.w400,
                                fontSize: mqSize.width*0.042,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: mqSize.width*0.045,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: mqSize.height*0.04,),

                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text(
                              'Expert Keys',
                              style: TextStyle(
                                fontFamily: 'Benne',
                                fontWeight: FontWeight.w400,
                                fontSize: mqSize.width*0.042,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: mqSize.width*0.045,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mqSize.height*0.04,),

                // logout profile buttons
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05),
                    child: Container(
                      height: mqSize.height*0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Color(0xFFDB2519)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.delete, color: Color(0xFFDB2519), size: 24,),
                          SizedBox(width: 10,),

                          Text(
                            'Delete Account',
                            style: TextStyle(
                              letterSpacing: -0.3,
                              fontFamily: 'BernardMTCondensed',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFDB2519),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: mqSize.height*0.02,),

                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05),
                    child: Container(
                      height: mqSize.height*0.06,
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
                            'Logout',
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
        ),
      ),
    );
  }
}
