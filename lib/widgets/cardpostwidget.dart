 import 'package:au_votes/apicalss/User.dart';
import 'package:au_votes/candidate/candidatenames.dart';
import 'package:au_votes/candidate/electoralcandidates.dart';
import 'package:au_votes/widgets/buttonwidget.dart';
import 'package:au_votes/widgets/imagewidget.dart';
import 'package:au_votes/widgets/selectelections.dart';
import 'package:au_votes/widgets/showvotingdialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class Post extends StatefulWidget {
  const  Post({super.key});
  
  @override
  State<Post> createState() => _PostState();
}


class _PostState extends State<Post> {
  late Future<List<String>> futureData;
  late ElectoralCandidates candidate;
  List<String> images=[    'assets/IMG_2415.PNG',    'assets/IMG_2422.jpeg',    'assets/IMG_2423.jpg'  ];
  int _selectedIndex = 0;
  int indexVotedFor=0;

  @override
  void initState() {
    // TODO: implement initState
    futureData=User.userPhoto();
    candidate= ElectoralCandidates();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    candidate.p();
    return ChangeNotifierProvider(
      create: (context) => ElectoralCandidates(),
      builder:(context, child) {
        return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: candidate.dataLength,
                  itemBuilder: (context, index) {
                    return Card(
                      shadowColor: Color.fromARGB(255, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(candidate.name(index)),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => showDialog(
                                context: context,
                                builder: (_) => mm(candidate.bannerImage(index)),
                              ),
                              child: Hero(
                                tag: 'image${candidate.name(index)}',
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    candidate.bannerImage(index),
                                    fit: BoxFit.cover,
                                    
                                  ),
                                ),
                              ),
                            ),
                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                          Consumer<ElectoralCandidates>(
                            builder: (context, value, child) {
                               return OutlinedButton(
                              onPressed: (){
                                value.Setvotes(index);
                              },
                              child: Text('${value.getVotes(index)}.vts'),
                            );
                            },
                            
                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.02,)

                        ],
                      ),
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  candidate.dataLength,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedIndex == index ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.02,),

              SizedBox(
                width: MediaQuery.of(context).size.width/4,
                child: CastVote(index:_selectedIndex)),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,)
            ],
          ),
        ),
      );
      },
       
    );
  }

  mm(String image){
    return Dialog.fullscreen(
      child: GestureDetector(
        child: Image.asset(image, fit: BoxFit.fill,),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }

}
