import 'package:flutter/material.dart';
import 'package:note_clean_architecture/di/provider_setup.dart';
import 'package:note_clean_architecture/presentation/notes/notes_screen.dart';
import 'package:note_clean_architecture/ui/colors.dart';
import 'package:provider/provider.dart';

void main() async {
  // 플랫폼 채널의 위젯 바인딩을 보장.
  WidgetsFlutterBinding.ensureInitialized();
  final providers = await getProviders();
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: darkGray,
        canvasColor: darkGray,
        floatingActionButtonTheme:
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: Colors.white,
                  foregroundColor: darkGray,
                ),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: darkGray,
            ),
      ),
      home: const NotesScreen(),
    );
  }
}
