import 'package:animated_notes/palette.dart';
import 'package:flutter/material.dart';

class NoteCardLarge extends StatelessWidget {
  final String date;
  final String title;
  final String content;
  const NoteCardLarge({Key? key, required this.date, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        fit: StackFit.passthrough,
        clipBehavior: Clip.none,
        children: [
          Container(
            // width: MediaQuery.of(context).size.width * 0.6,
            // height: MediaQuery.of(context).size.height / 5,
            width: 240,
            height: 150,
            decoration: BoxDecoration(
              color: Palette.blackColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: -8,
            left: -5,
            child: Container(
              // width: MediaQuery.of(context).size.width * 0.6,
              // height: MediaQuery.of(context).size.height / 5,
              width: 240,
              height: 150,
              decoration: BoxDecoration(
                color: Palette.whiteColor,
                border: const Border(
                  top: BorderSide(color: Palette.blackColor, width: 3),
                  left: BorderSide(color: Palette.blackColor, width: 3),
                  right: BorderSide(color: Palette.blackColor, width: 3),
                  bottom: BorderSide(color: Palette.blackColor, width: 3),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.phone_android,
                          color: Palette.darkGreyColor,
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                              color: Palette.darkGreyColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Open Sans'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Palette.blackColor,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      content,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Palette.darkGreyColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Open Sans'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
