import 'package:animated_notes/constants/constants.dart';
import 'package:animated_notes/palette.dart';
import 'package:animated_notes/screens/filters_page.dart';
import 'package:animated_notes/widgets/note_brief_card.dart';
import 'package:animated_notes/widgets/note_card_large.dart';
import 'package:animated_notes/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends ConsumerStatefulWidget {
  int filters;
  HomePage({
    Key? key,
    required this.filters,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/drawer_icon.svg',
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Stack(
                        fit: StackFit.passthrough,
                        clipBehavior: Clip.none,
                        children: [

                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              color: Palette.blackColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Positioned(
                            top: -4,
                            left: -4,
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Palette.blackColor, width: 2),
                                  left: BorderSide(
                                      color: Palette.blackColor, width: 2),
                                  right: BorderSide(
                                      color: Palette.blackColor, width: 2),
                                  bottom: BorderSide(
                                      color: Palette.blackColor, width: 2),
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: const CircleAvatar(
                                backgroundColor: Palette.extraExtraLightGrey,
                                backgroundImage:
                                    NetworkImage(Constants.profImage),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Hey Mayomikun,',
                  style: TextStyle(
                    color: Palette.blackColor,
                    fontFamily: 'Open Sans',
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Let\'s be ',
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 20,
                        color: Palette.darkGreyColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'productive',
                      style: TextStyle(
                        color: Palette.blackColor,
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ShadowTextField(controller: _searchController),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> FilterPage(filters: widget.filters,)));
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: (widget.filters == 0)
                                    ? Container()
                                    : Container(
                                        width: 15,
                                        height: 15,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Palette.redColor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            widget.filters.toString(),
                                            style: const TextStyle(
                                              color: Palette.whiteColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                              ),
                              SvgPicture.asset(
                                'assets/filter-icon.svg',
                                width: 25,
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'PINNED NOTES',
                  style: TextStyle(
                    color: Palette.blackColor,
                    fontFamily: 'Press Start 2P',
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 165,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      NoteCardLarge(
                        date: '18 April 2023',
                        title: 'Code Snippets',
                        content: 'Commonly used widgets and their functions',
                      ),
                      NoteCardLarge(
                        date: '18 April 2023',
                        title: 'Code Snippets',
                        content: 'Commonly used widgets and their functions',
                      ),
                      NoteCardLarge(
                        date: '18 April 2023',
                        title: 'Code Snippets',
                        content: 'Commonly used widgets and their functions',
                      ),
                      NoteCardLarge(
                        date: '18 April 2023',
                        title: 'Code Snippets',
                        content: 'Commonly used widgets and their functions',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'RECENT NOTES',
                  style: TextStyle(
                    color: Palette.blackColor,
                    fontFamily: 'Press Start 2P',
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 400,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: const [
                      NoteBriefCard(
                        date: '18 April 2023',
                        title: 'Design Tips',
                        content:
                            'Commonly UI/UX pitfalls and tips for improving the quality of your work',
                      ),
                      NoteBriefCard(
                        date: '18 April 2023',
                        title: 'Design Tips',
                        content:
                            'Commonly UI/UX pitfalls and tips for improving the quality of your work',
                      ),
                      NoteBriefCard(
                        date: '18 April 2023',
                        title: 'Design Tips',
                        content:
                            'Commonly UI/UX pitfalls and tips for improving the quality of your work',
                      ),
                      NoteBriefCard(
                        date: '18 April 2023',
                        title: 'Design Tips',
                        content:
                            'Commonly UI/UX pitfalls and tips for improving the quality of your work',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
