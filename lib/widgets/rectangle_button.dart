import 'package:animated_notes/palette.dart';
import 'package:flutter/material.dart';

class RectangleButton extends StatefulWidget {
  final Widget child;
  final bool isCategory;
  final VoidCallback callback;
  const RectangleButton({Key? key, required this.child, this.isCategory = true, required this.callback}) : super(key: key);

  @override
  State<RectangleButton> createState() => _RectangleButtonState();
}

class _RectangleButtonState extends State<RectangleButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(widget.isCategory){
          setState(() {
            isSelected = !isSelected;
          });
        } else{
          widget.callback;
        }
      },
      child: Stack(
        fit: StackFit.passthrough,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 50,
            width: 80,
            constraints: const BoxConstraints(maxHeight: 50, maxWidth: 140),
            decoration: BoxDecoration(
              color: Palette.blackColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            left: -5,
            top: -8,
            child: Container(
              height: 50,
              width: 80,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              constraints: const BoxConstraints(maxHeight: 50, maxWidth: 140),
              decoration: BoxDecoration(
                color: isSelected ? Palette.blueColor : Palette.whiteColor,
                borderRadius: BorderRadius.circular(10),
                border: const Border(
                  top: BorderSide(color: Palette.blackColor, width: 2),
                  left: BorderSide(color: Palette.blackColor, width: 2),
                  right: BorderSide(color: Palette.blackColor, width: 2),
                  bottom: BorderSide(color: Palette.blackColor, width: 2),
                ),
              ),
              child: Center(
                child: widget.child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
