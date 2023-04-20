import 'package:flutter/material.dart';

import '../palette.dart';

class ShadowTextField extends StatelessWidget {
  final TextEditingController _controller;
  const ShadowTextField({Key? key, required TextEditingController controller}) : _controller = controller,super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        fit: StackFit.passthrough,
        clipBehavior: Clip.none,
        children: [
          Container(
            // width: MediaQuery.of(context).size.width * 0.7,
            // height: MediaQuery.of(context).size.height / 12,
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: Palette.blackColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            top: -8,
            left: -5,
            child: SizedBox(
              // width: MediaQuery.of(context).size.width * 0.7,
              // height: MediaQuery.of(context).size.height / 9,
              width: 250,
              height: 50,
              child: TextFormField(
                  controller: _controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Palette.blackColor,),
                  fillColor: Palette.whiteColor,
                  filled: true,
                  constraints: BoxConstraints(
                    minHeight: double.infinity,
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Palette.blackColor, width: 3),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: 'Search your notes',
                  hintStyle: TextStyle(
                    color: Palette.lightGreyColor,
                    fontFamily: 'Open Sans'
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
