import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("跳转到搜索页面"),
            onPressed: (){
              //通过命令路由传参数
              Navigator.pushNamed(context, '/search',arguments: {
                'id':123
              });
              //通过根组件命名路由统一管理跳转
//              Navigator.pushNamed(context, '/search');
              // 路由跳转
//              Navigator.of(context).push(
//                MaterialPageRoute(
//                  builder: (context)=>SearchPage()
//                )
//              );
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text("tabcontroller定义顶部tab切换"),
            onPressed: (){
              //通过命令路由传参数
              Navigator.pushNamed(context, '/tabbarcontroller',arguments: {
                'id':123
              });
              //通过根组件命名路由统一管理跳转
//              Navigator.pushNamed(context, '/search');
              // 路由跳转
//              Navigator.of(context).push(
//                MaterialPageRoute(
//                  builder: (context)=>SearchPage()
//                )
//              );
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
          RaisedButton(
            child: Text("时间日期"),
            onPressed: (){
              //通过命令路由传参数
              Navigator.pushNamed(context, '/timer');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: UserAccountsDrawerHeader(
                      accountName: Text("新用户"),//账户信息
                      accountEmail: Text("178@qq.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("http://pic.sc.chinaz.com/Files/pic/pic9/202008/bpic21130_s.jpg"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("http://pic2.sc.chinaz.com/Files/pic/pic9/202008/hpic2856_s.jpg"),
                          fit: BoxFit.cover)
                    ),
                    otherAccountsPictures: [
                      Image.network("http://pic2.sc.chinaz.com/Files/pic/pic9/202008/hpic2853_s.jpg"),
                      Image.network("http://pic.sc.chinaz.com/Files/pic/pic9/202008/bpic21130_s.jpg"),
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("登录"),
              onTap: (){
                Navigator.of(context).pop();//隐藏侧边栏
                Navigator.pushNamed(context, "/login",arguments: {
                  "id": 136
                });
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("空间2"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("空间3"),
            ),
            Divider(),
          ],
        ),
      ),
    );


  }
}
