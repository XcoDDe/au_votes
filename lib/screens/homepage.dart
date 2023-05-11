 import 'package:au_votes/widgets/formfieldwidget.dart';
import 'package:au_votes/widgets/imagewidget.dart';
import 'package:au_votes/widgets/isdarkorlightbutton.dart';
import 'package:au_votes/widgets/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  DarkOrLightModeToggle(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ImageWidget(),
                  Text(
                    'au',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  Text(
                    'V',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const FormFieldWidget(
                titleoftextfield: 'faculty',
                
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const TextWidget(
                note:
                    'Kindly fill the form with your valid matric and faculty details',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
