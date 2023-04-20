import 'package:animated_notes/screens/filters_page.dart';
import 'package:animated_notes/widgets/rounded_bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../palette.dart';
import '../widgets/rectangle_button.dart';
import '../widgets/rounded_circle_tags.dart';

class CategoriesPage extends ConsumerStatefulWidget {
  final String text;
  int filters;
  CategoriesPage({
    Key? key,
    required this.text,
    required this.filters,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends ConsumerState<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: RoundBottomContainer(),
                  child: Container(
                    height: 355,
                    decoration: const BoxDecoration(
                      color: Palette.blackColor,
                      border: Border(
                        top: BorderSide(color: Palette.blackColor, width: 2),
                        left: BorderSide(color: Palette.blackColor, width: 2),
                        right: BorderSide(color: Palette.blackColor, width: 2),
                        bottom: BorderSide(color: Palette.blackColor, width: 2),
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: RoundBottomContainer(),
                  child: Container(
                    height: 350,
                    decoration: const BoxDecoration(
                      color: Palette.whiteColor,
                      border: Border(
                        top: BorderSide(color: Palette.blackColor, width: 2),
                        left: BorderSide(color: Palette.blackColor, width: 2),
                        right: BorderSide(color: Palette.blackColor, width: 2),
                        bottom: BorderSide(color: Palette.blackColor, width: 2),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Hero(
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
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RectangleButton(
                                callback: () {},
                                child: const Text(
                                  'iOS Dev',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              RectangleButton(
                                callback: () {},
                                child: const Text(
                                  'Design & Tips',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RectangleButton(
                                callback: () {},
                                child: const Text(
                                  'Self Notes',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              RectangleButton(
                                callback: () {},
                                child: const Text(
                                  'Planning',
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap:  () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FilterPage(
                                        filters: widget.filters,
                                      )));
                            },
                            child: RectangleButton(
                              isCategory: false,
                              callback:(){},
                              child: const Icon(Icons.close),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 150,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        SizedBox(
                          height: 15,
                        ),
                        Hero(
                            tag: 'location',
                            child: RoundedCircleTags(text: 'LOCATION')),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Hero(
                            tag: 'tags',
                            child: RoundedCircleTags(text: 'TAGS')),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        SizedBox(
                          height: 15,
                        ),
                        Hero(
                            tag: 'date',
                            child: RoundedCircleTags(text: 'DATE')),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
