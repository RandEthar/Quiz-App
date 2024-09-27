//import 'dart:ffi';

import 'package:flutter/material.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/onBoarding.png',
              fit: BoxFit.cover,
            ),
          ),
        // const SizedBox(height: 70,),
      const Positioned(
        bottom: 160,left:20,
        child: Text("Welcome to quize App!",
        style: TextStyle(color: Color.fromARGB(255, 249, 247, 247),
        fontSize:20,
        fontFamily: "Gilroy",
        
               ),
               ),
      ),
      Positioned(
        bottom: 80,
        left: 20,right: 20,
        child: ElevatedButton(onPressed: (){
          //Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const HomePage(),));
          Navigator.pushNamed(context,"/home");
        }, 
        style: 
        ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
                 borderRadius : BorderRadius.circular(100),
          )
         
        )
        ,child: const 
        Text('Get Started',
        style: TextStyle(
          color: Colors.black,
           fontFamily: "Gilroy",
           fontSize: 20,
           fontWeight: FontWeight.w300
        ),
        
        )),
      )

        ],
      ),
    );
  }
}












