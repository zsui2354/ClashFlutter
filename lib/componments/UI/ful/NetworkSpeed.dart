import 'package:flutter/material.dart';

class Networkspeed extends StatefulWidget {
  const Networkspeed({super.key});

  @override
  State<Networkspeed> createState() => _NetworkspeedState();
}

class _NetworkspeedState extends State<Networkspeed> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          // border: Border.all(
          //   width: 1,
          //   color: Colors.red,
          // ),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              //上行
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: Row(
                  children: [
                    Icon(Icons.arrow_upward),
                    Expanded(child: SizedBox()),
                    Text("0"),
                    Expanded(child: SizedBox()),
                    Text("B/s"),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              //下行
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: Row(
                  children: [
                    Icon(Icons.arrow_downward),
                    Expanded(child: SizedBox()),
                    Text("0"),
                    Expanded(child: SizedBox()),
                    Text("B/s"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}