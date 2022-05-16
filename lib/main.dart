import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobbit/model/notes.dart';
import 'package:mobbit/pages/all_notes.dart';
import 'package:mobbit/core/navigators/router.dart';
import 'package:mobbit/services/providers/notes_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NotesAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final NotesProvider _notesProvider = NotesProvider();

  MyApp({Key? key}) : super(key: key) {
    _notesProvider.getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NotesProvider(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mobbit',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: Routers.generateRoute,
          home: AnimatedSplashScreen(
              duration: 3000,
              splash: const Text(
                'MOBBIT',
                style: TextStyle(
                  fontFamily: 'VarelaRound',
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              nextScreen: const AllTask(),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Colors.blue)),
    );
  }
}
