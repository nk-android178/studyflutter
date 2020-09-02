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

  // 循环动态数据
  List list =new List();
  HomeContent() {  // 构造函数初始化数据
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text('标题$i'),
      ));
    }
  }

  //自定义方法
  List<Widget> _getData(){ // 加下划线是属于私有方法只有当前类能使用

    var templist = listdata.map((e) => // 通过引入的数据集
        ListTile(
          leading: Image.network(e["imageurl"]),
          title: Text(e["title"]),
          subtitle: Text(e["author"]),
        )
    );
    return templist.toList();

//    List<Widget> list = new List();
//    for(var i =0; i< 20; i++){
//      list.add(ListTile(
//        title: Text('标题$i'),
//      ));
//    }
//    return list;

//    return [
//      ListTile(
//        title: Text('标题'),
//      ),
//      ListTile(
//        title: Text('标题'),
//      ),
//      ListTile(
//        title: Text('标题'),
//      ),
//      ListTile(
//        title: Text('标题'),
//      )
//    ];
  }
  
  Widget _getListdata(context,index){
    return ListTile(
      title: Text(listdata[index]["title"]),
    );
  }

  @override
  Widget build(BuildContext context) {

//    return ListView(
//      children: this._getData()
//    );

    return ListView.builder(
//        itemCount: this.list.length,
      itemCount: listdata.length, 
      itemBuilder: this._getListdata,// 不带参数是属于赋值代码，不是调用方法
//        itemBuilder:(context,index){ 
////          return this.list[index];
//        return ListTile(
//          title: Text(listdata[index]["title"]),
//        );
//        }
      );
  }

}
