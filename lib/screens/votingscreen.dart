import 'package:au_votes/main.dart';
 import 'package:au_votes/widgets/appbarwidget.dart';
import 'package:au_votes/widgets/buttonwidget.dart';
import 'package:au_votes/widgets/cardpostwidget.dart';
 import 'package:au_votes/widgets/imagewidget.dart';
import 'package:au_votes/widgets/isdarkorlightbutton.dart';
import 'package:au_votes/widgets/listofpresidentialelection.dart';
import 'package:au_votes/widgets/selectelections.dart';
import 'package:au_votes/widgets/showvotingdialogue.dart';
import 'package:flutter/material.dart';

class VotingPage extends StatefulWidget {
  const VotingPage({Key? key}) : super(key: key);

  @override
  State<VotingPage> createState() => _VotingPageState();
}

class _VotingPageState extends State<VotingPage> {
  bool drop = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
           children:[
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03
            ),
           const  MyAppBarr(),
            //  Card(child: Image.asset('assets/IMG_2415.PNG')),
            Expanded(child: Post()),
            
        
            
             
          ],
        ),
        floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.remove_red_eye_outlined),
        onPressed: (){
          ShowElections.ShowingElections(context);
        }),
      ),
    );
  }
}
















// Column(
        
//            children: [
             
         
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     const CircleAvatar(
            //       backgroundColor: Colors.transparent,
            //       child: SizedBox(
            //         width: 50,
            //         child: ImageWidget(),
            //       ),
            //     ),
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width * 0.05,
            //     ),
            //     const Text('Alex'),
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width * 0.6,
            //     ),
            //     IconButton(
            //       onPressed: () {},
            //       icon: const Icon(Icons.logout_rounded),
            //     ),
                
            //     ],
                
            //           ),
            // ),
        
        
            // drop? Container(
            //   child: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //          ButtonWidget(kindOfButton: 'elevated',titleText: 'sport-director',buttonColor: Colors.yellow,),
            //          SizedBox(
            //           width: MediaQuery.of(context).size.width*0.05,
            //          ),
            //          ButtonWidget(kindOfButton: 'elevated',titleText: 'Social-director',buttonColor: Colors.yellow,),
            //           SizedBox(
            //           width: MediaQuery.of(context).size.width*0.05,
            //          ),
            //          ButtonWidget(kindOfButton: 'elevated',titleText: 'welcome-director',buttonColor: Colors.yellow),
            //           SizedBox(
            //           width: MediaQuery.of(context).size.width*0.05,
            //          ),
            //          ButtonWidget(kindOfButton: 'elevated',titleText: 'wwwww-director',buttonColor: Colors.yellow),
                    
            //       ],
            //     ),
            //   ),
            // ), 
            // ):Container(),
            
            
            //  Container(
            //   width: MediaQuery.of(context).size.width,
            //   height:MediaQuery.of(context).size.height*0.5,
            //   child: Card(
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
                  
            //         children: [
            //           Row(
            //             children: [
            //                  CircleAvatar(
            //             child: ImageWidget(),
            //           ),
            //           SizedBox(
            //             width: MediaQuery.of(context).size.width*0.05,
            //           ),
            //           Container(
            //             child: Text("dsfsdfsdfdssdsdfdsfds\nsdsdfssdsdsfdsfsdsdfsdf"),
            //           )
            //             ],
            //           ),
            //           SizedBox(
            //           height: MediaQuery.of(context).size.height*0.02,
            //           ),
            //           Container(
            //             child: Image.asset('assets/image.webp'),
            //           ),
            //           SizedBox(
            //           height: MediaQuery.of(context).size.height*0.04,
            //           ),
            //           Row(
            //              children: [
            //                ElevatedButton(
            //           onPressed: (){}, 
            //           child: Text('6k.vts',style: TextStyle(color: Colors.white),)
            //           ),
            //           SizedBox(
            //           width: MediaQuery.of(context).size.width*0.09,
            //           ),
            //                ElevatedButton(
            //           onPressed: (){}, 
            //           child: Text('vision',style:TextStyle(color: Colors.white),)
            //           )
            //             ],
            //           ),
        
                      
                    
            //         ],
            //       ),
            //     ),
            //   ),
            //  )
        //   ],
        // ),
       