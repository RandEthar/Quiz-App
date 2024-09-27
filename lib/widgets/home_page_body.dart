
import 'package:flutter/material.dart';
import 'package:simple_quize_app/models/quize_model.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    super.key,
  });

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int indexQ=0;
  int correctAnswer=0;
 
  @override
  Widget build(BuildContext context) {
    return  (indexQ<list.length)? SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('assets/images/quiz_image.jpg'),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Quesion ${indexQ+1} of ${list.length}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              width: 400,
              child: Text(
              list[indexQ].question,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                 fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
                ),
              )),
          const SizedBox(
            height: 36,
          ),
          Column(
            children: List.generate(
           list[indexQ].options.length,
              (index) {
                return Column(
                  children: [
                    ElevatedButton(
                     
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          
                      if(list[indexQ].answer==list[indexQ].options[index]){
                         correctAnswer++;
                      }
                             
                      indexQ++;
                         
                        });
                      },
                      child: Text(
                       list[indexQ].options[index],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 6, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                       
                      ),
                     
                    ),
                   const  SizedBox(height: 30,),
                  ],
                );
              },
            ),
           
          ),
        ],
      ),
    ):Column(
     
          children: [ 
           const SizedBox(height: 40,),
           ClipRRect(
             borderRadius :BorderRadius.circular(40),
             child: Image.network( "https://rustytugman.com/wp-content/uploads/2020/04/congratulations-typography-handwritten-lettering-greeting-card-banner_7081-766.jpg",)),
                const SizedBox(height: 40,),
              const Text('Congratulations!.',
              style:TextStyle(
               color:Colors.black,
               fontSize: 30,
               fontWeight: FontWeight.w800
              )
              ),
                const SizedBox(height: 20,),
                Text("Your score is $correctAnswer out of ${list.length}",
                 style:const TextStyle(
               color:Colors.black,
               fontSize: 30,
               fontWeight: FontWeight.w300
              )
                ),
                const Spacer(),
                   Padding(
                     padding: const EdgeInsets.only(bottom:30),
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         minimumSize:const Size(double.infinity, 50),
                         shape: RoundedRectangleBorder(
                           borderRadius : BorderRadius.circular(40),
                         )
                       ),
                       
                       onPressed:(){
                       setState(() {
                        
                         indexQ=0;
                       correctAnswer=0;
                      Navigator.pushNamed(context, '/');
                       });
                       
                     }, child:const  Text( 'Play Again',
                      style: TextStyle(
                       color: Colors.black,
                       fontSize: 30,
                       fontWeight: FontWeight.w300
                      ),
                     
                     )
                                     
                                     
                                     
                                     
                                     
                           ),
                   ),],
              
    
    
    
    
          );
  }
}















