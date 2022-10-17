import 'package:first_project_to_do_app/views/screens/mian.dart';
import 'package:first_project_to_do_app/views/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  PageController pageController;
  Function function;
  Function function1;
  MainScreen(this.pageController, this.function, this.function1);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: const Text('Home'),
      //   backgroundColor: Colors.black,

      // ),
      body: Container(
        padding: EdgeInsets.all(27.w),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                // SizedBox(
                //   width: 27.w,
                // ),
                Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.w,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 208.w,
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
              height: 10.h,
            ),
            Row(
              children:[ 
                // 
                Container(
                alignment: Alignment.topLeft,
                //margin: EdgeInsets.all(27.w),
                child: Text(
                  'Hello,\nTareq Ali',
                  style: TextStyle(
                      fontSize: 36.w, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Container(
                alignment: Alignment.center,
                width: 120.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              SizedBox(
                width: 25.w,
              ),
              Container(
                alignment: Alignment.center,
                width: 120.w,
                height: 32.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Productivity',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ]),
            SizedBox(
              height: 22.h,
            ),
              
            //###########################################################################
              
            InkWell(
              onTap: () {
                pageController.animateToPage(1,
                  duration: const Duration(microseconds: 100), curve: Curves.linear); function1();
              },
              child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Card(
                      elevation: 1,
                      color: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 157.h,
                        width: 281.w,
                      ),
                    ),
                    Positioned(
                      //top: 20,
                      //right: -20,
                      child: Card(
                        color: Colors.grey.shade800,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          height: 150.h,
                          width: 301.w,
                        ),
                      ),
                    ),
                    Positioned(
                        //top: 20,
                        //left: -20,
                        child: Card(
                      elevation: 3,
                      color: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        padding:
                            EdgeInsets.all(20.w),
                        height: 143.h,
                        width: 321.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Daily progress',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            const Text(
                              'Here you can see your daily task',
                              style: TextStyle(color: Colors.white60, fontSize: 14),
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            Text(
                              '76%',
                              style: TextStyle(
                                  fontSize: 16.w,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Container(
                                alignment: Alignment.topCenter,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: const LinearProgressIndicator(
                                    value: 0.76,
                                    valueColor:
                                        AlwaysStoppedAnimation<Color>(Colors.blue),
                                    backgroundColor: Colors.grey,
                                  ),
                                ))
                          ]),
                      ),
                    )),
                    Positioned(
                      right: 60,
                      top: 20,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            //top: 10,
                            right: -40,
                            child: Container(
                              height: 25.h,
                              width: 25.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/profile.jpg'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            //top: 10,
                            right: -20,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 25.h,
                              width: 25.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/profile1.jpg'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            //top: 10,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 25.h,
                              width: 25.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/profile2.jpg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
                SizedBox(
                  height: 21.h,
                ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Categories',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Stack(
                children:[ Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(10.w),
                  height: 138.h,
                  width: 152.w,
                  child:
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Container(
                        height: 33.h,
                        width: 33.w,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: 
                          const Icon(Icons.menu_book_rounded, color: Colors.white, size: 20,)
                      ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '5 New',
                      style: TextStyle(color: Colors.white60, fontSize: 12.w),
                    ),
                    Text(
                      'Books',
                      style: TextStyle(
                          fontSize: 16.w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      children:[ 
                        SizedBox(
                          height: 5.h,
                          width: 74.w,
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: const LinearProgressIndicator(
                                value: 0.76,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                backgroundColor: Colors.grey,
                              ),
                            )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                          Container(
                            alignment: Alignment.center,
                            height: 21.h,
                            width: 48.w,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('9/24', style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10.w
                            ),),
                          ),
                      ]),
                  ]),
                ),
                Positioned(
                      right: 30,
                      top: 15,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            //top: 10,
                            right: -20,
                            child: Container(
                              height: 25.h,
                              width: 25.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/profile.jpg'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            //top: 10,
                            //right: -10,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 25.h,
                              width: 25.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/profile1.jpg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              ]),
              SizedBox(
                width: 17.w,
              ),
              Stack(
                children:[ Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(10.w),
                  height: 138.h,
                  width: 152.w,
                  child:
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Container(
                        height: 33.h,
                        width: 33.w,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: 
                          const Icon(Icons.email, color: Colors.white, size: 20,)
                      ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '2 New',
                      style: TextStyle(color: Colors.white60, fontSize: 12.w),
                    ),
                    Text(
                      'Emails',
                      style: TextStyle(
                          fontSize: 16.w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      children:[ 
                        SizedBox(
                          height: 5.h,
                          width: 74.w,
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: const LinearProgressIndicator(
                                value: 0.2,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                                backgroundColor: Colors.grey,
                              ),
                            )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                          Container(
                            alignment: Alignment.center,
                            height: 21.h,
                            width: 48.w,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('4/18', style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10.w
                            ),),
                          ),
                      ]),
                  ]),
                ),
                Positioned(
                      right: 10,
                      top: 15,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            //top: 10,
                            //right: -20,
                            child: Container(
                              height: 25.h,
                              width: 25.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/profile1.jpg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              ]),
            ]),
            SizedBox(
              height: 16.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Stack(
                children:[ Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(10.w),
                  height: 138.h,
                  width: 152.w,
                  child:
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Container(
                        height: 33.h,
                        width: 33.w,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent.shade700,
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: 
                          Icon(Icons.done_rounded, color: Colors.white, size: 20.w,)
                      ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '9 New',
                      style: TextStyle(color: Colors.white60, fontSize: 12.h),
                    ),
                    Text(
                      'Work',
                      style: TextStyle(
                          fontSize: 16.w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      children:[ 
                        SizedBox(
                          height: 5.h,
                          width: 74.w,
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: LinearProgressIndicator(
                                value: 0.4,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.purpleAccent.shade700),
                                backgroundColor: Colors.grey,
                              ),
                            )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                          Container(
                            alignment: Alignment.center,
                            height: 21.h,
                            width: 48.w,
                            decoration: BoxDecoration(
                              color: Colors.purpleAccent.shade700,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('3/15', style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10.w
                            ),),
                          ),
                      ]),
                  ]),
                ),
                Positioned(
                      right: 30,
                      top: 15,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            //top: 10,
                            right: -20,
                            child: Container(
                              height: 25.h,
                              width: 25.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/profile.jpg'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            //top: 10,
                            //right: -10,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 25.h,
                              width: 25.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/profile2.jpg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              ]),
              SizedBox(
                width: 17.w,
              ),
              Stack(
                children:[ Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(10.w),
                  height: 138.h,
                  width: 152.w,
                  child:
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Container(
                        height: 33.h,
                        width: 33.w,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.shade400,
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: 
                          Icon(Icons.notifications, color: Colors.white, size: 20.h,)
                      ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '5 New',
                      style: TextStyle(color: Colors.white60, fontSize: 12.w),
                    ),
                    Text(
                      'Urgent',
                      style: TextStyle(
                          fontSize: 16.w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      children:[ 
                        SizedBox(
                          height: 5.h,
                          width: 74.w,
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: LinearProgressIndicator(
                                value: 0.56,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent.shade400),
                                backgroundColor: Colors.grey,
                              ),
                            )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                          Container(
                            alignment: Alignment.center,
                            height: 21.h,
                            width: 48.w,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent.shade400,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('9/24', style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10.w
                            ),),
                          ),
                      ]),
                  ]),
                ),
                Positioned(
                      right: 10,
                      top: 15,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            //top: 10,
                            //right: -20,
                            child: Container(
                              height: 25.h,
                              width: 25.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/profile.jpg'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}
