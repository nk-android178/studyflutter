import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

// StatelessWidget 无状态的组件
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp一般作为根组件
      home: Scaffold(
        //Scaffold是一个路由页的骨架
        appBar: AppBar(title: Text('flutter demo')),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Row(
            children: [
              Expanded( // Expanded 权重分配大小  可以固定一个 一边自适应 Expanded可以自适应
                flex: 1,
                child: IconContainer(Icons.home, color: Colors.deepPurple,),
              ),
              Expanded(
                flex: 2,
                child: IconContainer(Icons.settings, color: Colors.red,),
              ),
            ],
          ),
          Row(
            children: [
              IconContainer(Icons.home, color: Colors.deepPurple,),// 宽高按照设置的值
              Expanded(  //剩下的自适应
                flex: 2,
                child: IconContainer(Icons.settings, color: Colors.teal,),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(  //剩下的自适应
                  flex: 2,
                  child: Container(
                    height: 180,
                    child: IconContainer(Icons.settings, color: Colors.red,),
                  )
              ),
              SizedBox(width: 10,),
              Expanded(  //剩下的自适应
                  flex: 1,
                  child: Container(
                    height: 180,
                    child: ListView(
                      children: [
                        Container(
                          height: 85,
                          child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598955111478&di=4951c5168c4be23dc16f4b78a4c3474b&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fwww%2Fdy%2Fslidenews%2F17_img%2F2016_38%2F2890_5310393_975068.jpg%2Fw640slw.jpg",
                            fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 85,
                          child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598955111478&di=4951c5168c4be23dc16f4b78a4c3474b&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fwww%2Fdy%2Fslidenews%2F17_img%2F2016_38%2F2890_5310393_975068.jpg%2Fw640slw.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ],
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );


//    return Container(
//      width: 500.0,
//      color: Colors.lightGreen,
//      child: Column(  //  垂直布局
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // x轴排列方式
//        crossAxisAlignment: CrossAxisAlignment.end, // y轴排列方式  默认是居中
//        children: [
//          IconContainer(Icons.home, color: Colors.deepPurple,),
//          IconContainer(Icons.settings, color: Colors.red,),
//          IconContainer(Icons.search, color: Colors.yellow,)
//        ],
//      ),
//      child: Row(  //  水平布局
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // x轴排列方式
//        crossAxisAlignment: CrossAxisAlignment.start, // y轴排列方式  默认是居中
//        children: [
//          IconContainer(Icons.home, color: Colors.deepPurple,),
//          IconContainer(Icons.settings, color: Colors.red,),
//          IconContainer(Icons.search, color: Colors.yellow,)
//        ],
//      ),
//    );

//    return IconContainer(Icons.home,color: Colors.deepPurple,);
  }
}

class IconContainer extends StatelessWidget {
  IconData icon;
  Color color = Colors.red;
  double size = 32.0;

  IconContainer(this.icon, {this.color, this.size}); // 构造函数参数加{}表示可传参数 图标为必传参数
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
          child: Icon(Icons.home, size: this.size, color: Colors.white,)
      ),
    );
  }
}
