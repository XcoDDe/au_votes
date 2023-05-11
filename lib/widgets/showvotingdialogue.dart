import 'package:au_votes/candidate/candidatenames.dart';
import 'package:au_votes/candidate/electoralcandidates.dart';
import 'package:au_votes/screens/votingcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class CastVote extends StatefulWidget {
int index=0;
CastVote({super.key, required this.index});

  @override
  State<CastVote> createState() => _CastVoteState();
}

class _CastVoteState extends State<CastVote> {
  ElectoralCandidates candidate=ElectoralCandidates();
  @override
  Widget build(BuildContext context) {
    return Consumer<ElectoralCandidates>(
      builder: (context, value, child) {
          return SizedBox(
        child: ElevatedButton(
          onPressed: (){
            setState(() {
              
            });
            showDialog(
              barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
        return AlertDialog(
           
          title: Text('Vote for'),
          content: SizedBox(
            width: MediaQuery.of(context).size.width/4,
            child: VotingContainer(index:widget.index)),
          actions: [
             TextButton(
                child: Text('OK'),
                onPressed: () {
                  value.Setvotes(widget.index);
                  Navigator.of(context).pop();
                },
           
            
            ),
          ],
        );
        },
      );
      
          },
           child:Text('cast vote')
      
        ),
      );
      },
     
    );
  }
}