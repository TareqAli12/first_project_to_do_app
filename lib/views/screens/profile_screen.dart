import 'dart:ui';

import 'package:first_project_to_do_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    bool isDark=false;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(alignment: Alignment.center,
        padding: EdgeInsets.all(27.w),
        child: Column(
          children: [
            SizedBox(
              height: 54.h,
            ),
            Container(
              height: 108.h,
              width: 110.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/profile.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Container(alignment: Alignment.center,
              height: 42.h,
              width: 280.w,
              child: Text('Tareq Ali', style: TextStyle(
                fontSize: 36.w, fontWeight: FontWeight.bold, color: Colors.white
              ),),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(alignment: Alignment.center,
              height: 14.h,
              width: 176,
              child: Text('tareqmaher02@gmail.com', style: TextStyle(
                fontSize: 12.w, fontWeight: FontWeight.bold, color: Colors.white60
              ),),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
            alignment: Alignment.center,
            height: 42.h,
            width: 150.w,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              child: const Text('Edit Profile', style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14
              ),)
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Notifications', style: TextStyle(
              fontSize: 14.w, fontWeight: FontWeight.bold, color: Colors.grey.shade800,
            ),),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 58.h,
            width: 320.w,
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Container(
                  height: 19.h,
                  width: 173.w,
                  child: Text('Turn on Notification', style: TextStyle(
                    fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white
                  ),),
                ),
                SizedBox(
                  width: 50.w,
                ),
                CupertinoSwitch(
                  value: isDark,
                  onChanged: (d) {
                    isDark = d;
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Invite Link', style: TextStyle(
              fontSize: 14.w, fontWeight: FontWeight.bold, color: Colors.grey.shade800,
            ),),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 58.h,
            width: 320.w,
            padding: EdgeInsets.only(right:20.w, left: 20.w),
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Text('Invite people', style: TextStyle(
                  fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white
                ),),
                SizedBox(
                  width: 82.w,
                ),
                Container(
              alignment: Alignment.center,
              width: 103.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Invite',
                    style: TextStyle(
                      fontSize: 14.w,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
              ],
            ),
          ),
          SizedBox(
            height: 43.h,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ToDoApp(),),);
            },
            child: Text('Log out', style: TextStyle(
              fontSize: 14.w, fontWeight: FontWeight.bold, color: Colors.grey.shade800
            ),),
          )
          ],
        ),
      ),
    );
  }

}