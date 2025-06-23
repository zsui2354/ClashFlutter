import 'package:flutter/material.dart';

class Proxyitem extends StatefulWidget {


      // 'protocols':'VLESS',
      // 'name':'节点4',
      // 'ip':'192.168.1.1',
      // 'port':'443',
      // 'delay':'1834',

  final String Protocol;
  final String ProxyName;
  final String ip;
  final String port;
  final String delay;

  const Proxyitem({
    super.key,
    required this.Protocol,
    required this.ProxyName,
    required this.ip,
    required this.port,
    required this.delay,
  });

  @override
  State<Proxyitem> createState() => _ProxyitemState();
}

class _ProxyitemState extends State<Proxyitem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(73, 145, 145, 145),
        ),
        borderRadius: BorderRadius.circular(15),

        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(40, 0, 0, 0),
            blurRadius: 5,
          )
        ]
        // border: Border(
        //   bottom: BorderSide(
        //     width: 1,
        //     color: const Color.fromARGB(73, 145, 145, 145),
        //   )
        // )
        
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                //1部分
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(widget.ProxyName,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-80, 0),
                        child: Text(widget.ip + ':' + widget.port),
                      )
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
                //2 Icon 按钮
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.share),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.edit),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.delete),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}