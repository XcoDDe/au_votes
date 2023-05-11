import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShowElections{
   
    // ignore: non_constant_identifier_names
    static Future<Widget?> ShowingElections(BuildContext context)async{
    return await showModalBottomSheet(
      context: context,
      builder: 
      (context) {
        print('called');
        return SizedBox(
         
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text('sport director')),
                  ElevatedButton(onPressed: (){}, child: const Text('sport director')),
                  ElevatedButton(onPressed: (){}, child: const Text('sport director')),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text('sport director')),
                ],
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text('sport director')),
                  ElevatedButton(onPressed: (){}, child: const Text('sport director')),
                  ElevatedButton(onPressed: (){}, child: const Text('sport director')),
                ],
              ),
              
            ],
          ),
        );
      }, 
       enableDrag: true,
       useSafeArea: true,
      );
  
  }
}