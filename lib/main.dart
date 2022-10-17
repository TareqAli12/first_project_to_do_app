import 'package:first_project_to_do_app/views/screens/mian.dart';
import 'package:first_project_to_do_app/views/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 815),
      builder: (context, child){
        return const MaterialApp(
        home:ToDoApp());
      }
    )
    );
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(27.w),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Container(
              height: 236 ,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.cover,
                  image: AssetImage('images/removebg.png')),
                ),
              ),
            Container(
              width: 247.w,
              height: 140.h,
              child: Text('The only productivity\napp you need', style: TextStyle(
                fontSize: 36.w, fontWeight: FontWeight.bold, color: Colors.white
              ),),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Main(),),);
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width *0.8,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(10),
                child: const Text('Sign in with Email', style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, 
                ),),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[ 
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width *0.37,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {},
                    child: const Text('Google', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, 
                    ),)
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width *0.37,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {},
                    child: const Text('Apple ID', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, 
                    ),)
                  ),
                ),
            ]),
            Container(
              child: const Text('By continuing you agree to the Terms and conditions', style: TextStyle(
                color: Colors.white60
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
