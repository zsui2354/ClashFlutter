import 'package:flutter/material.dart';

class initpage extends StatefulWidget {
  const initpage({super.key});

  @override
  State<initpage> createState() => _initpageState();
}

class _initpageState extends State<initpage> {

  late int _selectIndex = 0;    //索引


  List<Map<String, dynamic>> steer = [
    {
      "title": "欢迎使用",
      "description": "这是一个简洁优雅的应用界面。",
      "image": "assets/images/step1.png",
    },
    {
      "title": "功能强大",
      "description": "轻松管理你的任务和日程。",
      "image": "assets/images/step2.png",
    },
    {
      "title": "立即开始",
      "description": "现在就开始体验我们的应用吧！",
      "image": "assets/images/step3.png",
      "start": "true"
    },
  ];

  /**
   * 滑动到 下一页
   */
  Future<void> Nextpage() async {
    setState(() {
      if(_selectIndex < steer.length){
        _selectIndex = _selectIndex + 1;
      }else{

      }
    });
  }



  @override
  Widget build(BuildContext context) {
  final ViewSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [

          // 索引条
          // Container(
          //   child: Row(

          //   ),
          // ),

          // 滑动引导区域
          AnimatedPositioned(
            left: - ViewSize.width * _selectIndex,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
            child: Row(
              children: steer.map((pageinfo){
                return Container(
                  decoration: BoxDecoration(
                    // border: Border.all(
                    //   width: 1,
                    //   color: Colors.red,
                    // )
                  ),
                  width: ViewSize.width,
                  height: ViewSize.height,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(pageinfo['title'],
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none, // 清除下划线
                              color: Colors.black,
                            ),
                        ),
                        SizedBox(height: 20,),
                        Text(pageinfo['description'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.none, // 清除下划线
                            ),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(height: 100,
                          child: Image.asset(pageinfo['image'])),

                        SizedBox(height: 15,),
                        NextButton(),
                      ],
                    )
                  ),
                );
              }).toList(),

              
                // Container(
                //   decoration: BoxDecoration(
                //     border: Border.all(
                //       width: 1,
                //       color: Colors.red,
                //     )
                //   ),
                //   width: ViewSize.width,
                //   height: ViewSize.height,
                //   child: Center(child: Text("1")),
                // ),
            ),
          )
        ],
      )
    );
  }

  Widget NextButton(){
    return  Container(
      width: 100,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Material(
          color: Colors.blueAccent,
          child: _selectIndex == steer.length - 1 ? 
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/managerCenter');
            },
            child: Center(
              child: Text("开始",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
          ) :
          InkWell(
            onTap: (){
              Nextpage();
            },
            child: Center(
              child: Text("下一步",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
          ),



        ),
      ),
    );
  }
}

