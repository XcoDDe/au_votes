import 'package:au_votes/candidate/Elections.dart';
import 'package:flutter/material.dart';

class ElectoralCandidates with ChangeNotifier{
  final List<Map<String, dynamic>> _candidates = [
  ];
  int _votes=0;

  ElectoralCandidates(){
    add(
    name: 'SEGUN MAKINDE', 
    election: 'AUSA PRESIDENT', 
    falculty: 'NOT FOUND', 
    gender: 'MALE', 
    bannerImage:'assets/IMG_2415.PNG'
    );

   add(
    name: 'OPIAH CHIDIEBUBE CHRISTIAN', 
    election: 'AUSA PRESIDENT', 
    falculty: 'NOT FOUND', 
    gender: 'MALE', 
    bannerImage:'assets/IMG_2422.jpeg'
    );
    
  add(
    name: 'ODO OKORIE RITA', 
    election: 'AUSA TREASURER', 
    falculty: 'NOT FOUND', 
    gender: 'FEMALE', 
    bannerImage:'assets/IMG_2423.jpg'
    );
  }
  

  add(
    {required String name, 
    required String election, 
    required String falculty,
    required String gender,
    required String bannerImage,
    int? votes
    }
    ) {
      _candidates.add(
       {
        'fn':name,
        'elect':election,
        'fal':falculty,
        'gender':gender,
        'banner':bannerImage,
        'votes':0
       }
      );
      
    }

    String name(int index){
       String n='';
       n=_candidates[index]['fn']!;
       return n;
    }


    String election(int index){
       String n='';
       n=_candidates[index]['elect']!;
       return n;
    }


    String fal(int index){
       String n='';
       n=_candidates[index]['fal']!;
       return n;
    }


    String gender(int index){
       String n='';
       n=_candidates[index]['gender']!;
       return n;
    }


    String bannerImage(int index){
       String n='';
       n=_candidates[index]['banner']!;
       return n;
    }

    void p(){
      print('$_candidates ssfsfsfd');
    }

    get dataLength{
      return _candidates.length;
    }
     void Setvotes(int index){
       
      _candidates[index]['votes']+=1;
       
      notifyListeners();
      
    }
    int getVotes(index){
      _votes=_candidates[index]['votes'];
      return _votes;
    }
}
