import 'package:flutter/material.dart';

class Connectionstatus extends StatefulWidget {
  const Connectionstatus({super.key});

  @override
  State<Connectionstatus> createState() => _ConnectionstatusState();
}

class _ConnectionstatusState extends State<Connectionstatus> {

  bool ConnectionStatus = true;  //连接状态
  List<String> ConnectionString = ['已连接','未连接'];

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      bottom: 0,
      left: 0,
      right: 0,
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
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //连接时间
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                child: Row(
                  children: [
                    //计时器组件
                  ],
                ),
              ),
          
              //连接状态
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ConnectionStatus ? Colors.greenAccent : Colors.redAccent,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      "${ConnectionStatus ? ConnectionString[0] : ConnectionString[1]}",
                    )
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