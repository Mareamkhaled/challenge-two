import 'package:flutter/material.dart';
import 'package:challeng_two/pages/second_page.dart';
//lib\pages\second_page.dart
class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                    },
                    
                  ),
           ),
         )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Forgot Password",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
              
            ),),
            Image(image: AssetImage('assests/image.png'),
            height: 310,
            width: 400,
            ),
          // SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Email Address',
               // hintText: "email",
                
              ),
             ),
            ),
            Spacer(flex: 1,)
            ,
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: RichText(
         text: TextSpan(
            children: [
        TextSpan(
          
          text: '\t\t\t\t\t\t\t\t\t\tPlease write your email to receive a\n',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
            color: Colors.grey,
          ),
        ),
        TextSpan(
          text: 'confirmation code to set a new password.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: Colors.grey,
          ),
        ),
            ],
          ),
        ),
      ),
  //  Spacer(flex: 1,),

       GestureDetector(
        onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context){
                return const second_page();
              }));
        },
         child: Container(
          height: 75,
          width: double.infinity,
          color: Color(0xff9775FA),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center, // Center the child widgets horizontally
             children: [
               Text(
          'Confirm Mail',
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
          ],
        ),
      );
  }
}