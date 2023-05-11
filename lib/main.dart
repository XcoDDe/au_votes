import 'package:au_votes/apicalss/User.dart';
import 'package:au_votes/model/managingstates/darkorlightmode.dart';
import 'package:au_votes/screens/homepage.dart';
 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

void main() {
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DarkOrLightMode()),
        // other providers go here
      ],
      child: const MyApp(),
    ),
  );
}

 class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkOrLightMode>(
      builder: (context, darkOrLightMode, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
             
            colorScheme: darkOrLightMode.isDark
                ? const ColorScheme.dark()
                : const ColorScheme.light(),
          ),
          home:  MyHomePage(),
        );
      },
    );
  }
}


 
