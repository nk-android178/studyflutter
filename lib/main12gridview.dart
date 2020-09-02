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

  List<Widget> _getresdata(){
    var templist = listdata.map((e) =>
        Container(
          child: Column( // 和listview 有区别
            children: [
              Image.network(e["imageurl"]),
              SizedBox(height: 10,), // 目的是加个文字间隔
              Text(
                  e["title"],
                  textAlign: TextAlign.center
              )
            ],
          ),
          decoration: BoxDecoration( // 设置边框
              border: Border.all(
                  color: Colors.deepPurple,
                  width: 1
              )
          ),
        )
    );
    return templist.toList();
  }

  Widget _getbuildresdata(context , index){

    return  Container(
      child: Column( // 和listview 可滑动有区别  Column垂直布局 Row 水平布局  会有宽高度限制
        children: [
          Image.network(listdata[index]["imageurl"]),
          SizedBox(height: 10,), // 目的是加个文字间隔
          Text(
              listdata[index]["title"],
              textAlign: TextAlign.center
          )
        ],
      ),
      decoration: BoxDecoration( // 设置边框
          border: Border.all(
              color: Colors.deepPurple,
              width: 1
          )
      ),
    );
  }

  List<Widget> _getListdata(){
    List<Widget> list = new List();
    for(var i = 0; i < 20; i++){
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.yellow,
        child: Text(
          "标题$i",
          style: TextStyle(color: Colors.indigo,fontSize: 20),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // build模式下配置参数
        crossAxisSpacing: 10.0,//item左右距离
        mainAxisSpacing: 10.0, //item 上下距离
        childAspectRatio: 0.7,//宽高比例
        crossAxisCount: 2,// 列数
        // 没有padding可以通过在最外层加Container在设置外边间距
      ),
      itemCount: listdata.length,
      itemBuilder: this._getbuildresdata,
//    return GridView.count(
//      crossAxisSpacing: 10.0,//item左右距离
//      mainAxisSpacing: 10.0, //item 上下距离
//      padding: EdgeInsets.all(10),//整体边距  直接设置item高度是无效的
//      childAspectRatio: 0.7,//宽高比例
//      crossAxisCount: 3,// 列数
//      children: this._getresdata(), // 使用集合
//      children: this._getListdata(), // 使用集合
//      children: [
//        Text('wenben'),
//        Text('wenben'),
//        Text('wenben'),
//        Text('wenben'),
//        Text('wenben'),
//        Text('wenben'),
//        Text('wenben'),
//        Text('wenben'),
//        Text('wenben'),
//        Text('wenben'),
//      ],
    );
  }

}
