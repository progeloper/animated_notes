import 'package:animated_notes/palette.dart';
import 'package:animated_notes/screens/categories_page.dart';
import 'package:animated_notes/screens/home_page.dart';
import 'package:animated_notes/widgets/rectangle_button.dart';
import 'package:animated_notes/widgets/rounded_circle_tags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/rounded_category_buttons.dart';

class FilterPage extends ConsumerStatefulWidget {
  int filters;
  FilterPage({
    Key? key,
    required this.filters,
  }) : super(key: key);

  @override
  ConsumerState createState() => _FilterPageState();
}

class _FilterPageState extends ConsumerState<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Filters',
                      style: TextStyle(
                        color: Palette.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        fontFamily: 'Open Sans',
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                HomePage(filters: widget.filters)));
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 30,
                        color: Palette.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16, top: 40, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => CategoriesPage(
                                            text: 'Category',
                                            filters: widget.filters)));
                              },
                              child: const RoundedCategoryButton(
                                text: 'CATEGORY',
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
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
              ),
              Expanded(child: Container()),
              Align(
                alignment: Alignment.bottomCenter,
                child: RectangleButton(
                    child: const Text(
                      'APPLY',
                      style: TextStyle(
                        color: Palette.blackColor,
                        fontFamily: 'Press Start 2P',
                        fontSize: 13,
                      ),
                    ),
                    callback: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
