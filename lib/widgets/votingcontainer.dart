 import 'package:au_votes/widgets/paper.dart';
import 'package:flutter/material.dart';

class VoteAnimation extends CustomPainter {
  final double paperPosition;
  double animation=0;

  VoteAnimation({required this.paperPosition,required this.animation});

  @override
  void paint(Canvas canvas, Size size) {
    final boxPaint = Paint()..color = Colors.blueGrey;
 
    // Draw the box
    final boxRect = Rect.fromLTWH(0, 0, size.width, size.height);
     
          canvas.drawRRect(
        RRect.fromRectAndRadius(boxRect, const Radius.circular(10)), boxPaint);  
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class VotingContainer extends StatefulWidget {
  int index;
  VotingContainer({required this.index});
  @override
  _VotingContainerState createState() => _VotingContainerState();
}

class _VotingContainerState extends State<VotingContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  static late Animation<double> _animation;
   late Animation<double> animation2;

  bool _isVoted = false;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 85).
    animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));

     animation2 = Tween<double>(begin: -150, end: 40).animate(

      CurvedAnimation(
        parent:_controller, 
        curve:const Interval(0.4, 1.0, curve: Curves.linear)
      )
      );
  
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.3,
        child: AnimatedBuilder(
          
          animation: _controller,
          builder: (context, child) {
            return  Center(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                
                  CustomPaint(
                    painter: VoteAnimation(paperPosition: _animation.value,animation: _animation.value),
                    size: const Size(300, 200),
                  ),
              
               
                
                
                 Positioned(
                  left: 40,
                  right: 40,
                  top: -10,
                  
                  
                   child: Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(166, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                 ),
                  if(!_animation.isCompleted)
                   Positioned(
                  top: _animation.value,
                  
                  left: 0,
                  right:0,
                  child:CustomPaint(
                     painter: Paper(paperPosition: _animation.value),
                     size: const Size(100,50),
                  )
                  // child: Container(
                  //   alignment: Alignment.center,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     color: Colors.white70,
                  //   ),
                  //   width: 50,
                  //   height: 30,
                     
                  //   child: const Text('220305',style: TextStyle(color: Colors.yellow,fontSize: 15),
                  //   ),
                  // )),
                   ) , 
                Positioned.fill(
                  
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
               if(_animation.isCompleted)
                  Positioned(
                    bottom:0,
                    left: 0,
                    right: 0,
                    top: 0,
                    child: ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds),
                      child: const Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 100.0,
                      ),
                    ),

                    )
                  ],
                ),
              ),
              
              if (_animation.value==85)
               
            const Text(
              'Thanks for voting!',
              style: TextStyle(fontSize: 20),
            ),
            ],
          ),
        );
          },
           
        ),
      );
   
  }
    }