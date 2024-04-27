import 'package:challeng_two/components/secCom.dart';
import 'package:challeng_two/pages/first_page.dart';
import 'package:challeng_two/pages/third_page.dart';
import 'package:flutter/material.dart';

class second_page extends StatelessWidget {
  const second_page({super.key});

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
                      Navigator.pop(context, MaterialPageRoute(builder: (context){
                return const first_page();
              }));
                    },
                    
                  ),
           ),
         )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Verification Code",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
              
            ),),
            Image(image: AssetImage('assests/image.png'),
            height: 310,
            width: 400,
            ),
            
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                secCom(
                  text: "7",
                ),
                secCom(
                  text: "4",
                ),
                secCom(
                  text: "2",
                ),
                secCom(
                  text: "3",
                ),

              ],
            ),
            Spacer(flex: 1,),

            // Text('00:20',
            // style: TextStyle(
            //   color: Colors.black,
            //   fontWeight: FontWeight.w500,
            //   fontSize: 18
            // ),)
        Padding(
          padding: const EdgeInsets.only(bottom: 20,right: 36),
          child: RichText(
           text: TextSpan(
              children: [
          TextSpan(
            
            text: '\t\t\t\t\t\t\t\t\t\t00:20 ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: 'resend confirmation code.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
              ],
            ),
          ),
        ),
         
          GestureDetector(
        onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context){
                return const third_page();
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
          'Confirm Code',
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