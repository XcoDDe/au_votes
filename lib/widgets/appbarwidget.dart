import 'package:au_votes/widgets/imagewidget.dart';
import 'package:au_votes/widgets/isdarkorlightbutton.dart';
import 'package:flutter/material.dart';

class MyAppBarr extends StatelessWidget {
  const MyAppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
       
      width: MediaQuery.of(context).size.width,
      child: Row(
      mainAxisAlignment: MediaQuery.of(context).size.width>600?MainAxisAlignment.center:MainAxisAlignment.spaceAround,
      children: [
        
         const CircleAvatar(
          child: ImageWidget(),
         ),
         if( MediaQuery.of(context).size.width>600)
          const SizedBox(
            width: 30,
          ),
          Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width<600?MediaQuery.of(context).size.width*0.3:MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height*0.05,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: const Text('220305.fos',style: TextStyle(color: Colors.white),),
    
         ),
         if( MediaQuery.of(context).size.width>600)
          SizedBox(
            width: 30,
          ),
          
         IconButton(onPressed: (){}, icon: const Icon(Icons.logout)),
         
        ],
        
              ),
    );
  }
}