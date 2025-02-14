import 'package:flutter/material.dart';

class PortalWidget extends StatelessWidget {
  PortalWidget({
    super.key
  });

  List<int> list = [1,2,3,4,5,6,7,8,9,10,11,12,13,141,15,16,17,18,19,20];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: _buildlist(list),
      ),
    );
  }

  List<Widget> _buildlist(List<int> list) {
    List<Widget> formattedList = [];
    list.forEach((item) {
      formattedList.add(
        CircleAvatar(
          backgroundColor: Colors.blue,
          child: 
          Text(item.toString(),
            style: 
              TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w100,
           ),
          ),
        ),
      );
    });
    return formattedList;
  }
}