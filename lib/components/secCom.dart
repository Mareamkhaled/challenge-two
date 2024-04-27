import 'package:flutter/material.dart';

class secCom extends StatelessWidget {
  const secCom({this.text});
 final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 77,
                  height: 98,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16),
                   // color: Colors.black
                  ),
                  child: Center(
                    child: Text(
                                     text!,
                                    style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black, 
                                    fontSize: 35, 
                              ),
                            ),
                  ),
                );
  }
}