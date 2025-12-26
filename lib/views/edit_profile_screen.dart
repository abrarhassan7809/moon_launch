import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moon_launch/widgets/profile_background.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _profileImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 70,
    );

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

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
              onTap: () {
                Navigator.pop(context);
              },
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
              width: mqSize.width*0.25,
            ),
          ],
        ),
      ),

      body: ProfileBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontFamily: 'BernardMTCondensed',
                        fontWeight: FontWeight.w400,
                        fontSize: mqSize.width*0.06,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mqSize.height*0.1,),

                Stack(
                  children: [
                    Container(
                      width: mqSize.height*0.165,
                      height: mqSize.height*0.165,
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
                          child: ClipOval(
                            child: _profileImage != null
                                ? Image.file(
                              _profileImage!,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            )
                                : Image.asset(
                              'assets/images/profile_image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: InkWell(
                        onTap: _pickImage,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFFE600),
                                Color(0xFFDB2519),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mqSize.height*0.05,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05),
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text(
                        "Username",
                        style: TextStyle(fontFamily: 'Benne', fontSize: 14),
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
                  padding: EdgeInsets.symmetric(horizontal: mqSize.width*0.05),
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text(
                        "Email Address",
                        style: TextStyle(fontFamily: 'Benne', fontSize: 14),
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
                SizedBox(height: mqSize.height*0.05,),

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
                      child: Center(
                        child: Text(
                          'Update',
                          style: TextStyle(
                            letterSpacing: -0.3,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
