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
    return ListView(
      padding: EdgeInsets.all(10), //边距
      children: <Widget>[
        Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598955111478&di=4951c5168c4be23dc16f4b78a4c3474b&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fwww%2Fdy%2Fslidenews%2F17_img%2F2016_38%2F2890_5310393_975068.jpg%2Fw640slw.jpg'),
        Container(
          child: Text(
            '标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20
            ),
          ),
          height: 50,
          padding: EdgeInsets.all(10),
        ),
        Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598955111478&di=4951c5168c4be23dc16f4b78a4c3474b&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fwww%2Fdy%2Fslidenews%2F17_img%2F2016_38%2F2890_5310393_975068.jpg%2Fw640slw.jpg'),
        Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598955111478&di=4951c5168c4be23dc16f4b78a4c3474b&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fwww%2Fdy%2Fslidenews%2F17_img%2F2016_38%2F2890_5310393_975068.jpg%2Fw640slw.jpg'),
        Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598955111478&di=4951c5168c4be23dc16f4b78a4c3474b&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fwww%2Fdy%2Fslidenews%2F17_img%2F2016_38%2F2890_5310393_975068.jpg%2Fw640slw.jpg'),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.yellow,),
          title: Text(// 标题
            "1强化学习之后，机器人学习瓶颈如何突破？",
            style: TextStyle(
              fontSize: 18
            ),
          ),
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        ),
        ListTile(
          leading: Icon(Icons.home, size: 40,),
          title: Text(// 标题
            "2强化学习之后，机器人学习瓶颈如何突破？",
            style: TextStyle(
                fontSize: 18
            ),
          ),
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
          trailing: Icon(Icons.access_time, size: 40,),
        ),
        ListTile(
          leading: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598955111478&di=4951c5168c4be23dc16f4b78a4c3474b&imgtype=0&src=http%3A%2F%2Fk.sinaimg.cn%2Fwww%2Fdy%2Fslidenews%2F17_img%2F2016_38%2F2890_5310393_975068.jpg%2Fw640slw.jpg'),
          title: Text(// 标题
            "3强化学习之后，机器人学习瓶颈如何突破？",
            style: TextStyle(
                fontSize: 18
            ),
          ),
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        ),
      ],
    );
  }

}
