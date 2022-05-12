import 'package:flutter/material.dart';
import 'package:mobbit/core/navigators/navigators.dart';
import 'package:mobbit/widgets/note.dart';

class AllTask extends StatefulWidget {
  const AllTask({Key? key}) : super(key: key);
  @override
  State<AllTask> createState() => _AllTaskState();
}

class _AllTaskState extends State<AllTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.note_add_rounded,
                color: Colors.blue,
              ),
              Text(
                'Mobbit',
                style:
                    TextStyle(color: Colors.black, fontFamily: 'VarelaRound'),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: const <Widget>[
                Note(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.createNote);
                  },
                  child: const Text('+ Add Note',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'VarelaRound',
                          color: Colors.white)),
                ),
              ),
            ),
          ],
        ));
  }
}
