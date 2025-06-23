import 'package:flutter/material.dart';
import 'package:flutter_application_1/componments/UI/ful/NavigatorBar.dart';
import 'package:flutter_application_1/componments/UI/ful/ProxyList.dart';

class managerCenter extends StatefulWidget {
  const managerCenter({super.key});

  @override
  State<managerCenter> createState() => _managerCenterState();
}

class _managerCenterState extends State<managerCenter> {

  bool isHover = false;         //存储鼠标悬停状态

  late int SelectIndex = 0;     //导航选择

  void NavigatorUpdata(int Index){
    setState(() {
      SelectIndex = Index;
      //print("点击了 Index: $Index");
    });
  }

  @override
  Widget build(BuildContext context) {
    final ViewSize = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: ViewSize.width,
        height: ViewSize.height,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.red,
          )
        ),
        child: Stack(
          children: [

            //导航栏
            AnimatedPositioned(
              top: ViewSize.height * 0.1,
              bottom:  ViewSize.height * 0.1,
              left: ViewSize.width * 0.02,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Navigatorbar(
                callback: NavigatorUpdata,
              ),
            ),



            //功能显示区域
            AnimatedPositioned(
              right: 20,
              left: 230,
              top: 30,
              bottom: 30,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: MouseRegion(
                onEnter: (_){
                  setState(() {
                    isHover = true;
                  });
                },
                onExit: (_){
                  setState(() {
                    isHover = false;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    // boxShadow: isHover ? 
                    // [
                    //   BoxShadow(
                    //     color: const Color.fromARGB(61, 0, 0, 0),
                    //     blurRadius: 7,
                    //   )
                    // ] : 
                    // [
                    //   BoxShadow(
                    //     color: const Color.fromARGB(61, 0, 0, 0),
                    //     blurRadius: 10,
                    //   )
                    // ]
                  ),
                  child: Container(
                    // height: ViewSize.height * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(
                      //   width: 1,
                      //   color: Colors.red,
                      // ),
                
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 300),
                      child: Builder(
                        key: ValueKey(SelectIndex),
                        builder: (_) {
                          switch(SelectIndex){
                            case 0:
                              return Proxylist();
                            case 1:
                              return Text("2");
                            case 2:
                              return Text("3");
                            case 3:
                              return Text("4");
                            case 4:
                              return Text("5");
                            default:
                              return SizedBox.shrink();  // 默认返回一个空控件，避免返回null
                          }
                        }
                      ),
                    ),
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}