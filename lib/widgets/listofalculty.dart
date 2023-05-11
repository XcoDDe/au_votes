import 'package:au_votes/model/falculties.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListOfFalculty extends StatefulWidget {
  const ListOfFalculty({super.key});

  @override
  State<ListOfFalculty> createState() => _ListOfFalcultyState();
}

class _ListOfFalcultyState extends State<ListOfFalculty> {
  String selectedFalculty = 'fos';
  final List<String> falcultyList = Falculty().allFalculties;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: DropdownButtonFormField(
        value: selectedFalculty,
        decoration: const InputDecoration(
            labelText: 'Select your falculty',
            border: OutlineInputBorder(),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.yellow)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple))),
        items: falcultyList.map((eachFalculty) {
          return DropdownMenuItem(value: eachFalculty, child: Text(eachFalculty));
        }).toList(),
        onChanged: (falculty) {
          setState(() {
            selectedFalculty = falculty!;
          });
        },
      ),
    );
  }
}
