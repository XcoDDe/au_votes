import 'package:au_votes/model/managingstates/darkorlightmode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class DarkOrLightModeToggle extends StatefulWidget {
  const DarkOrLightModeToggle({super.key});

  @override
  State<DarkOrLightModeToggle> createState() => _DarkOrLightModeToggleState();
}

class _DarkOrLightModeToggleState extends State<DarkOrLightModeToggle> {
   @override
  Widget build(BuildContext context) {
    return Consumer<DarkOrLightMode>(
      builder: (context, isDarks, child) {
        return IconButton(
        onPressed: (){
            // print('called toogle1');
            isDarks.setMode(!isDarks.isDark);
            // print('called toogle2');
        }, 
        icon: isDarks.isDark ? const Icon(Icons.dark_mode,color: Colors.deepPurpleAccent,):const Icon(Icons.light_mode,color: Color.fromARGB(255, 214, 200, 72),)
        );
      },
      
    );
  }
}