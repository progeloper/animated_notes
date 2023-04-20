import 'package:animated_notes/screens/categories_page.dart';
import 'package:animated_notes/widgets/rectangle_button.dart';
import 'package:flutter/material.dart';

import '../palette.dart';

class RoundedCategoryButton extends StatefulWidget {
  final String text;
  const RoundedCategoryButton({Key? key, required this.text}) : super(key: key);

  @override
  State<RoundedCategoryButton> createState() => _RoundedCategoryButtonState();
}

class _RoundedCategoryButtonState extends State<RoundedCategoryButton> {
  double width = 120;
  double height = 120;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: [
        AnimatedContainer(
          height: height,
          width: width,
          duration: const Duration(milliseconds: 1000),
          constraints: BoxConstraints(
            maxWidth: width,
            maxHeight: height,
          ),
          decoration: const BoxDecoration(
            color: Palette.blackColor,
            shape: BoxShape.circle,
          ),
        ),
        Positioned(
          top: -4,
          left: -4,
          child: AnimatedContainer(
            height: height,
            width: width,
            duration: const Duration(milliseconds: 1000),
            constraints: BoxConstraints(
              maxWidth: width,
              maxHeight: height,
            ),
            decoration: const BoxDecoration(
              color: Palette.whiteColor,
              border: Border(
                top: BorderSide(color: Palette.blackColor, width: 2),
                left: BorderSide(color: Palette.blackColor, width: 2),
                right: BorderSide(color: Palette.blackColor, width: 2),
                bottom: BorderSide(color: Palette.blackColor, width: 2),
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Hero(
                tag: 'Title',
                child: Text(
                  widget.text,
                  style: const TextStyle(
                    color: Palette.blackColor,
                    fontFamily: 'Press Start 2P',
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
