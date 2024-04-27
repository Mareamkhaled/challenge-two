import 'package:challeng_two/pages/second_page.dart';
import 'package:flutter/material.dart';

class third_page extends StatelessWidget {
  const third_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: Padding(
          padding: const EdgeInsets.only(top: 16,left: 15),
           child: Container(
            width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffF5F6FA)
                ),
             child: IconButton(
                    style: ButtonStyle(
                    
                    ),
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      // Handle back button press
                      Navigator.pop(context, MaterialPageRoute(builder: (context){
                return const second_page();
              }));
                    },
                    
                  ),
           ),
         )
        ),
         body: Column(
         //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text("New Password",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
                
              ),),
            ),
            Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                 // hintText: "email",
                  
                ),
               ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Confirm Password',
                 // hintText: "email",
                  
                ),
               ),
             ),
             Spacer(flex: 2,),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text('Please write your new password.',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 15
              ),),
            ),
            GestureDetector(
        onTap: () {
        //  Navigator.push(context, MaterialPageRoute(builder: (context){
        //         return const second_page();
        //       }));
        },
         child: Container(
          height: 75,
          width: double.infinity,
          color: Color(0xff9775FA),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center, // Center the child widgets horizontally
             children: [
               Text(
          'Reset Password',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
               ),
             ],
           ) 
         
         ),
       )

            
            ]
            
            
            )
    );
  }
}