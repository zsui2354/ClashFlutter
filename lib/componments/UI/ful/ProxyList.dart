import 'package:flutter/material.dart';
import 'package:flutter_application_1/componments/UI/ful/Proxyitem.dart';

class Proxylist extends StatefulWidget {
  const Proxylist({super.key});

  @override
  State<Proxylist> createState() => _ProxylistState();
}

class _ProxylistState extends State<Proxylist> {

  int SelectIndex = 0;

  List<Map<String,dynamic>> proxyDataList  = [
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #1 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #2 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #3 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #4 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #4 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #5 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #6 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #7 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #8 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #9 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #10 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #11 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #12 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    },
    {
      'protocols':'VLESS',
      'name':'王果冻blog  开放节点 基节点 #13 子节点',
      'ip':'192.168.1.1',
      'port':'443',
      'delay':'1834',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: proxyDataList.length,
      itemBuilder: (context,index){
        final ProxyObject = proxyDataList[index];

        return Transform.translate(
          offset: Offset(0, 1),
          child: Container(
            decoration: BoxDecoration(
              
            ),
            child: Proxyitem(
              Protocol: ProxyObject['protocols'],
              ProxyName:ProxyObject['name'],
              ip:ProxyObject['ip'],
              port:ProxyObject['port'],
              delay:ProxyObject['delay'],
            ),
          ),
        );
      }
    );
  }
}