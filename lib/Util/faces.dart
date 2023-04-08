import 'package:flutter/material.dart';


class Face extends StatelessWidget {
  final String face;
  const Face({Key? key,
 required this.face,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.cyan[200],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Center(child: Text(face,style: TextStyle(fontSize: 28),),),

    );
  }
}
