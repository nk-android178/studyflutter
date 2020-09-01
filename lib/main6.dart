import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// StatelessWidget 无状态的组件
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //MaterialApp一般作为根组件
      home: Scaffold( //Scaffold是一个路由页的骨架
        appBar: AppBar(
            title: Text('flutter demo')
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        
        child: Image(
          image: AssetImage('images/aa.jpg'),
          height: 300,
          width: 300,
        )
//        child: ClipOval( // 圆形类
//          child: Image.network(
//            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598955111478&di=4951c5168c4be23dc16f4b78a4c3474b&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fwww%2Fdy%2Fslidenews%2F17_img%2F2016_38%2F2890_5310393_975068.jpg%2Fw640slw.jpg",
//            height: 200,
//            width: 200,
//            fit: BoxFit.cover,
//          ),
//        ),


//        width: 300,
//        height: 300,
//        decoration: BoxDecoration(
//          color: Colors.yellow,
////          borderRadius: BorderRadius.all( // 圆角
////            Radius.circular(150)
////          )
//        borderRadius: BorderRadius.circular(100),  // 圆角
//          image: DecorationImage(
//            image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598955111478&di=4951c5168c4be23dc16f4b78a4c3474b&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fwww%2Fdy%2Fslidenews%2F17_img%2F2016_38%2F2890_5310393_975068.jpg%2Fw640slw.jpg"),
//            fit: BoxFit.cover // 铺满
//          ),
//        ),
      )
    );
  }

}
