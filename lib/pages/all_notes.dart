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
        foregroundColor: Colors.black,
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
              style: TextStyle(color: Colors.black, fontFamily: 'VarelaRound'),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_horiz),
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  value: 'Add Note',
                  child: Text('Add Note'),
                ),
              ];
            },
            onSelected: (String value) {
              print('You Click on po up menu item');
            },
          ),
          // PopupMenuButton(
          //   icon: const Icon(Icons.more_horiz),
          //   itemBuilder: (context) {
          //     return const [
          //       PopupMenuItem(
          //         value: 'Sort By Newest',
          //         child: Text('Sort By Newest'),
          //       ),
          //       PopupMenuItem(
          //         value: 'Sort By Oldest',
          //         child: Text('Sort By Oldest'),
          //       ),
          //       PopupMenuItem(
          //         value: 'Clear All Notes',
          //         child: Text('Clear All Notes'),
          //       )
          //     ];
          //   },
          //   onSelected: (String value) {
          //     print('You Click on po up menu item');
          //   },
          // ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(
                  Icons.mode_edit,
                  size: 40,
                  color: Colors.blue,
                ),
                Expanded(
                  child: Text(
                    'When you add note\'s they will all apear here.',
                    style: TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    //
    //
    // Stack(
    //   children: [
    //     GridView.count(
    //       primary: false,
    //       padding: const EdgeInsets.all(20),
    //       crossAxisSpacing: 10,
    //       mainAxisSpacing: 10,
    //       crossAxisCount: 2,
    //       children: <Widget>[
    //         Note(),
    //       ],
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(right: 10, bottom: 10),
    //       child: Align(
    //         alignment: Alignment.bottomRight,
    //         child: TextButton(
    //           style: ButtonStyle(
    //               backgroundColor: MaterialStateProperty.all(Colors.blue)),
    //           onPressed: () {
    //             Navigator.pushNamed(context, Routes.createNote);
    //           },
    //           child: const Text('+ Add Note',
    //               style: TextStyle(
    //                   fontSize: 16,
    //                   fontFamily: 'VarelaRound',
    //                   color: Colors.white)),
    //         ),
    //       ),
    //     ),
    //   ],
    // ));
  }
}
