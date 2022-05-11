import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  const Note({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 169, 240, 171),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'My First Note',
            style: TextStyle(
                fontSize: 19.0,
                fontFamily: 'VarelaRound',
                fontWeight: FontWeight.bold),
          ),
          Text('12/4/2012 19:45 PM'),
          SizedBox(
            height: 10,
          ),
          Text(
            'My First Note My First Note My First Note My First Note My First Note ..',
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'VarelaRound',
            ),
          ),
        ],
      ),
    );
  }
}
