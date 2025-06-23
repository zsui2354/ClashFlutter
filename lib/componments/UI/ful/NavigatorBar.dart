import 'package:flutter/material.dart';
import 'package:flutter_application_1/componments/UI/less/NavButton.dart';
import 'package:flutter_application_1/componments/UI/ful/NetworkSpeed.dart';
import 'package:flutter_application_1/componments/UI/ful/ConnectionStatus.dart';

class Navigatorbar extends StatefulWidget {

  final void Function(int) callback;

  const Navigatorbar({
    super.key,
    required this.callback,
    });

  @override
  State<Navigatorbar> createState() => _NavigatorbarState();
}

class _NavigatorbarState extends State<Navigatorbar> {

  bool isHover = false;

  late int isSelectIndex = 0;

  

  @override
  Widget build(BuildContext context) {
    final ViewSize = MediaQuery.of(context).size;

    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 240,
          // maxHeight: 1000,
        ),
        child: AnimatedContainer(
          width: ViewSize.width * 0.2,
          height: ViewSize.height * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(
            //   width: 1,
            //   color: Colors.red,
            // ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: isHover ? 
            [
              BoxShadow(
                color: const Color.fromARGB(61, 0, 0, 0),
                blurRadius: 10,
              )
            ] :
            [
              BoxShadow(
                color: const Color.fromARGB(132, 0, 0, 0),
                blurRadius: 10,
              )
            ]
          ),
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: Stack(
            children: [

              AnimatedPositioned(
                top: 60 * (isSelectIndex + 1),
                left: 10,
                right: 10,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: Transform.translate(
                  offset: Offset(0, 60),
                  child: Container(
                      width: ViewSize.width * 0.19,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(185, 128, 255, 208),
                    ),
                  ),
                ),
              ),


              //网速速率组件
              Networkspeed(),

              //导航栏区域组件
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSelectIndex = 0;
                          });
                          widget.callback(isSelectIndex);
                        },
                        child: Navbutton(
                          label: "nav.ProxyNetwork",
                          icon: "assets/icons/proxy.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSelectIndex = 1;
                          });
                          widget.callback(isSelectIndex);
                        },
                        child: Navbutton(
                          label: "nav.subscribe",
                          icon: "assets/icons/subscribe.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSelectIndex = 2;
                          });
                          widget.callback(isSelectIndex);
                        },
                        child: Navbutton(
                          label: "nav.settings",
                          icon: "assets/icons/setting.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSelectIndex = 3;
                          });
                          widget.callback(isSelectIndex);
                        },
                        child: Navbutton(
                          label: "nav.log",
                          icon: "assets/icons/log.png",
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSelectIndex = 4;
                          });
                          widget.callback(isSelectIndex);
                        },
                        child: Navbutton(
                          label: "nav.about",
                          icon: "assets/icons/about.png",
                        ),
                      ),
                    ],
                  ),
                ),

              //连接状态组件
              Connectionstatus(),


            ],
          ),
          ),
      ),
    );
  }
}