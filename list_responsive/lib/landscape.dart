
import 'package:flutter/material.dart';

class LandscapeWidget extends StatelessWidget {
  LandscapeWidget({super.key});

  List<int> list1 = [1,2,3,4,5,6,7,8,9,10];
  List<int> list2 = [11,12,13,14,15,16,17,18,19,20];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 16,
          ),
          Column(
            children: _buildlist(list1),
          ),
          Container(
            width: 16,
          ),
          Column(
            children: _buildlist(list2),
          )
        ],
      ),
    );
  }

  List<Widget> _buildlist(List<int> list) {
    List<Widget> formattedList = [];
    list.forEach((item) {
      formattedList.add(
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 135, 243, 33),
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