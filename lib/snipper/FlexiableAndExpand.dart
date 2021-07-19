import 'package:flutter/material.dart';

// flutter FlexFit.tight loose属性
// flutter flexible 与 expand 
class FlexibleAndExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Text('11'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: Text('22'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                color: Colors.grey,
                child: Text('11'),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.green,
                child: Text('22'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Text('11'),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.green,
                child: Text('22'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}