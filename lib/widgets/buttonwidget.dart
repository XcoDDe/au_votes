import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String? kindOfButton;
  final Function? whatTheButtonDoes;
  final String? titleText;
  final IconData? iconButton;
  final Color? buttonColor;
  const ButtonWidget(
      {Key? key,
      required this.kindOfButton,
      this.whatTheButtonDoes,
      this.titleText,
      this.iconButton,
      this.buttonColor})
      : super(key: key);

  final textStyle = const TextStyle(color: Colors.black, fontSize: 20);
  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.kindOfButton == 'elevated') {
      return SizedBox(
        width: 100,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: widget.buttonColor),
          onPressed: () {
            if (widget.whatTheButtonDoes != null) {
              widget.whatTheButtonDoes!();
            }
          },
          child: Text(
            widget.titleText ?? 'elevated',
            style: widget.textStyle,
          ),
        ),
      );
    } else if (widget.kindOfButton == 'icon') {
      return IconButton(
        color: widget.buttonColor,
        onPressed: () {
          if (widget.whatTheButtonDoes != null) {
            widget.whatTheButtonDoes!();
          }
        },
        icon: Icon(widget.iconButton ?? Icons.check),
      );
    }

    return TextButton(
        style: TextButton.styleFrom(backgroundColor: widget.buttonColor),
        onPressed: () {
           if(widget.whatTheButtonDoes!=null){
               widget.whatTheButtonDoes!();
            }
        },
        child: Text(widget.titleText ?? 'text', style: widget.textStyle));
  }
}
