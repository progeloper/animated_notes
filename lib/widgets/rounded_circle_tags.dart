import 'package:flutter/material.dart';

import '../palette.dart';

class RoundedCircleTags extends StatefulWidget {
  final String text;
  const RoundedCircleTags({Key? key, required this.text}) : super(key: key);

  @override
  State<RoundedCircleTags> createState() => _RoundedCircleTagsState();
}

class _RoundedCircleTagsState extends State<RoundedCircleTags> {
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
      ],
    );
  }
}
