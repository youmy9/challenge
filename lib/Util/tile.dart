

import 'package:flutter/material.dart';



class tile extends StatelessWidget {
  final icon;
  final String exName;
  final String exnumber;
  final  olor;

  const tile({Key? key,
    required   this.icon,
    required  this.exName,
    required  this.exnumber,
    required this.olor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.circular(12)   ,
                  child: Container(
                      padding:EdgeInsets.all(16),
                      color:olor,


                      child: Icon(icon  ,color: Colors.white,)),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exName,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      exnumber,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),

                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
