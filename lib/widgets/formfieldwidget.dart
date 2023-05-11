 import 'package:au_votes/screens/votingscreen.dart';
import 'package:au_votes/widgets/buttonwidget.dart';
import 'package:au_votes/widgets/listofalculty.dart';
import 'package:flutter/material.dart';

class FormFieldWidget extends StatefulWidget {
  final double widthOfMyWidget = 10.0;
  final double heigtOfMyWidget = 10.0;
  final String titleoftextfield;

  const FormFieldWidget({Key? key, required this.titleoftextfield})
      : super(key: key);

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

 class _FormFieldWidgetState extends State<FormFieldWidget> {
  TextEditingController matricInput=TextEditingController();
  TextEditingController facultyInput=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
       child: Column(
        children: [
          SizedBox(
            width: widget.widthOfMyWidget * 36,
            child: TextFormField(
               controller: matricInput,
            
              validator: (matric) {
                
                if (matric!.length!=6) {
                  return "Invalid matric number";
                }
                return null;
              },
                
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Matric',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 16),
          const ListOfFalculty(),
          const SizedBox(height: 16),
          SizedBox(height: widget.heigtOfMyWidget),
          ElevatedButton(
            onPressed: () {
              if(_formKey.currentState!.validate()){
                // Do something
              }
            },
            child: const Text('Submit'),
          ),
          const Text('then'),
          ButtonWidget(
            kindOfButton: 'elevated',
            buttonColor: Colors.yellow,
            titleText: 'vote',
            whatTheButtonDoes:(){
              if(_formKey.currentState!.validate()){
                // Do something
                Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                builder:(context) {
                  return  VotingPage();
              },
              )
              );
              }
               
            },
          ),
        ],
      ),
    );
  }
}
