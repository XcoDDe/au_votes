import 'package:au_votes/candidate/electoralcandidates.dart';

class CandidateData{
  

  CandidateData(){
   
   ElectoralCandidates candidate=ElectoralCandidates();
   candidate.add(
    name: 'SEGUN MAKINDE', 
    election: 'AUSA PRESIDENT', 
    falculty: 'NOT FOUND', 
    gender: 'MALE', 
    bannerImage:'assets/IMG_2415.PNG'
    );

   candidate.add(
    name: 'OPIAH CHIDIEBUBE CHRISTIAN', 
    election: 'AUSA PRESIDENT', 
    falculty: 'NOT FOUND', 
    gender: 'MALE', 
    bannerImage:'assets/IMG_2422.jpeg'
    );
    
  candidate.add(
    name: 'ODO OKORIE RITA', 
    election: 'AUSA TREASURER', 
    falculty: 'NOT FOUND', 
    gender: 'FEMALE', 
    bannerImage:'assets/IMG_2423.jpg'
    );
    
   }

}