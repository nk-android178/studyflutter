import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutternext/res/listData.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwiperPage"),
      ),
      body: Column(
        children: [
          Container(
//            height: 300.0,//设置宽高比后可以不设置高度
            child: AspectRatio( // 适配屏幕 AspectRatio
              aspectRatio: 16/9,//按比例显示
              child: new Swiper(
                itemBuilder: (BuildContext context,int index){
                  return new Image.network(listdata[index]['imageurl'],fit: BoxFit.fill,);
                },
                itemCount: listdata.length,
                pagination: new SwiperPagination(),// 点
//                control: new SwiperControl(),// 配置箭头
                autoplay: true //自动轮播
              ),
            )
          ),
        ],
      )



    );
  }
}

