import 'package:au_votes/widgets/buttonwidget.dart';
import 'package:flutter/material.dart';

class Elections extends StatelessWidget {
  const Elections({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
               height: 40,
               padding: const EdgeInsets.all(5),
                
              color: Colors.red,
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 150,
                  mainAxisSpacing: 5,
                  // childAspectRatio: 0.40
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ButtonWidget(kindOfButton: 'elevated',titleText: 'button',buttonColor: Colors.yellow,);
                  // return  SizedBox(child: ElevatedButton(onPressed: (){}, child: Text('sport-director')));
          
                },
              ),
            );
            
    
  }
}
