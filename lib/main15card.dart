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
    return ListView(
      children: listdata.map((e) =>
        Card(
          margin: EdgeInsets.all(10),//边距
          child: Column(
            children: [
              AspectRatio( // 设置图片宽高比
                aspectRatio: 16/9,
                child: Image.network(e["imageurl"],fit: BoxFit.cover,),
              ),
              ListTile(
                leading: CircleAvatar( // 处理头像组件
                  backgroundImage: NetworkImage(e["imageurl"]),
                ),
                title: Text(e["title"]),
                subtitle: Text(e["author"],overflow: TextOverflow.ellipsis,), // overflow 截取 文本超出后的显示效果
              )
            ],
          ),
        ),
      ).toList()
    );

//    return ListView(
//      children: [
//        Card(
//          margin: EdgeInsets.all(10),//边距
//          child: Column(
//            children: [
//              AspectRatio( // 设置图片宽高比
//                aspectRatio: 16/9,
//                child: Image.network("http://pic.sc.chinaz.com/Files/pic/pic9/202008/bpic21130_s.jpg",fit: BoxFit.cover,),
//              ),
//              ListTile(
//                leading: ClipOval(
//                  child: Image.network(
//                    "http://pic2.sc.chinaz.com/Files/pic/pic9/202008/hpic2856_s.jpg",
//                    fit: BoxFit.cover,
//                    height: 60,
//                    width: 60,
//                  ),
//                ),
//                title: Text("XXXXXXX"),
//                subtitle: Text("WWWWWWW"),
//              )
//            ],
//          ),
//        ),
//        Card(
//          margin: EdgeInsets.all(10),//边距
//          child: Column(
//            children: [
//              AspectRatio( // 设置图片宽高比
//                aspectRatio: 16/9,
//                child: Image.network("http://pic.sc.chinaz.com/Files/pic/pic9/202008/bpic21130_s.jpg",fit: BoxFit.cover,),
//              ),
//              ListTile(
//                leading: CircleAvatar( // 处理头像组件
//                  backgroundImage: NetworkImage("http://pic.sc.chinaz.com/files/pic/pic9/202008/hpic2855.jpg"),
//                ),
//                title: Text("XXXXXXX"),
//                subtitle: Text("WWWWWWW"),
//              )
//            ],
//          ),
//        )
        
        
//        Card(
//          margin: EdgeInsets.all(10),
//          child: Column(
//            children: [
//              ListTile(
//                title: Text("标题"),
//                subtitle: Text("小标题"),
//              ),
//              ListTile(
//                title: Text("电话"),
//              ),
//              ListTile(
//                title: Text("地址"),
//              )
//            ],
//          ),
//        ),
//        Card(
//          margin: EdgeInsets.all(10),
//          child: Column(
//            children: [
//              ListTile(
//                title: Text("标题"),
//                subtitle: Text("小标题"),
//              ),
//              ListTile(
//                title: Text("电话"),
//              ),
//              ListTile(
//                title: Text("地址"),
//              )
//            ],
//          ),
//        ),
//        Card(
//          margin: EdgeInsets.all(10),
//          child: Column(
//            children: [
//              ListTile(
//                title: Text("标题"),
//                subtitle: Text("小标题"),
//              ),
//              ListTile(
//                title: Text("电话"),
//              ),
//              ListTile(
//                title: Text("地址"),
//              )
//            ],
//          ),
//        ),
//      ],
//    );


//    return AspectRatio(
//      aspectRatio: 3.0/1.0, // 宽高比 水平铺满 高度是宽的1/3
//      child: Container(
//        color: Colors.lightGreen,
//      ),
//    );
  }
}
