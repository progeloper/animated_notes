import 'package:animated_notes/palette.dart';
import 'package:flutter/material.dart';

class NoteBriefCard extends StatelessWidget {
  final String date;
  final String title;
  final String content;
  const NoteBriefCard({Key? key, required this.date, required this.title, required this.content})
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

            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height / 9,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.85,
              maxHeight: MediaQuery.of(context).size.height / 9,
            ),
            decoration: BoxDecoration(
              color: Palette.blackColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Positioned(
            top: -8,
            left: -5,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height / 9,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.height / 9,
                minWidth: MediaQuery.of(context).size.width * 0.9,
                minHeight: MediaQuery.of(context).size.height / 9,
              ),
              decoration: BoxDecoration(
                color: Palette.whiteColor,
                border: const Border(
                  top: BorderSide(color: Palette.blackColor, width: 3),
                  left: BorderSide(color: Palette.blackColor, width: 3),
                  right: BorderSide(color: Palette.blackColor, width: 3),
                  bottom: BorderSide(color: Palette.blackColor, width: 3),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Palette.blackColor,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
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
                      height: 10,
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
