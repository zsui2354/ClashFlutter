import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/language.dart';

class Navbutton extends StatelessWidget {

  final String label;
  final String icon;

  const Navbutton({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      decoration: BoxDecoration(
        // border: Border.all(
        //   width: 1,
        //   color: Colors.red,
        // )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
            children: [
              Image.asset('$icon'),
              Expanded(child: SizedBox()),
              Text(Language().tr('$label'),
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}