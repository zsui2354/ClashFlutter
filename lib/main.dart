import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/initpage.dart';
import 'package:flutter_application_1/pages/managerCenter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xray Proxy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),




      /**
       *  页面路由
       * 
       * - 引导页       initPage
       * - 主页         home
       * - 节点管理     porxyManager
       * - 设置列表     settings
       * - 订阅配置页   subscribeManager
       */
      initialRoute: '/initPage',
      routes: {
        '/initPage':(context) => initpage(),              //引导页
        '/managerCenter':(context) => managerCenter(),    //主页面
      },
    );
  }
}


