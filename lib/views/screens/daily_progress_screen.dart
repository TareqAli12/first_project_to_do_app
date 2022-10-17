import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailyProgress extends StatelessWidget {

  PageController pageController;
  Function function;
  Function function1;
  DailyProgress(this.pageController, this.function, this.function1);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(27.w),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Container(
                  height: 37.h,
                  width: 37.w,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(13)
                  ),
                  child: InkWell(
                    onTap: () {
                      pageController.animateToPage(0,
                  duration: const Duration(microseconds: 100), curve: Curves.linear); function1();
                    },
                    child: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,)
                    ),
                ),
                SizedBox(
                  width: 70.w,
                ),
                Text(
                  'Daily progress',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 41.w,
                ),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 7.w,
                ),
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/profile.jpg'),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      pageController.animateToPage(2,
                  duration: const Duration(microseconds: 100), curve: Curves.linear); function();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10.w),
              height: 39.h,
              width: 328.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(13),
              ),
              child: const Text('Search', style: TextStyle(
                fontSize: 14, color: Colors.white60,
              ),),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 69.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: InkWell(
                    onTap: () {},
                      child: Text(
                        'All',
                        style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 134.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: InkWell(
                    onTap: () {},
                      child: Text(
                        'Favorite',
                        style: TextStyle(
                          fontSize: 14.w,
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 57.h,
              width: 321.w,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.green
                )
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 33.h,
                    width: 33.w,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(13.w)
                    ),
                    child: const Icon(Icons.menu_book_rounded, color: Colors.white, size: 20,),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 210.w,
                    child: Text('Read \"The Lean Startup\"', style: TextStyle(
                      fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white
                    ),),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Container(alignment: Alignment.center,
                    height: 10.h,
                    width: 10.w,
                    child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 15,),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              height: 57.h,
              width: 321.w,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.green
                )
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 33.h,
                    width: 33.w,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade400,
                      borderRadius: BorderRadius.circular(13.w)
                    ),
                    child: const Icon(Icons.notifications, color: Colors.white, size: 20,),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 210.w,
                    child: Text('Fix landing page', style: TextStyle(
                      fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white
                    ),),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Container(alignment: Alignment.center,
                    height: 10.h,
                    width: 10.w,
                    child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 15,),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              height: 57.h,
              width: 321.w,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.green
                )
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 33.h,
                    width: 33.w,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent.shade700,
                      borderRadius: BorderRadius.circular(13.w)
                    ),
                    child: const Icon(Icons.done_rounded, color: Colors.white, size: 20,),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 210.w,
                    child: Text('Share prototype with team', style: TextStyle(
                      fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white
                    ),),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Container(alignment: Alignment.center,
                    height: 10.h,
                    width: 10.w,
                    child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 15,),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              height: 57.h,
              width: 321.w,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 33.h,
                    width: 33.w,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(13.w)
                    ),
                    child: const Icon(Icons.email, color: Colors.white, size: 20,),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 210.w,
                    child: Text('Reply to Richard', style: TextStyle(
                      fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white
                    ),),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Container(alignment: Alignment.center,
                    height: 10.h,
                    width: 10.w,
                    child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 15,),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              height: 57.h,
              width: 321.w,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 33.h,
                    width: 33.w,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent.shade700,
                      borderRadius: BorderRadius.circular(13.w)
                    ),
                    child: const Icon(Icons.done_rounded, color: Colors.white, size: 20,),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                    width: 210.w,
                    child: Text('Finalize pitch deck', style: TextStyle(
                      fontSize: 16.w, fontWeight: FontWeight.bold, color: Colors.white
                    ),),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Container(alignment: Alignment.center,
                    height: 10.h,
                    width: 10.w,
                    child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 15,),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
          ]),
        ),
      ),
    );
  }
}