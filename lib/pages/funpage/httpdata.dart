import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class HttpDataPage extends StatefulWidget {

  @override
  _HttpDataPageState createState() => _HttpDataPageState();
}

class _HttpDataPageState extends State<HttpDataPage> {

  List _list =[];
  _getData() async{
    var url = "http://a.itying.com/api/productlist";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print('response= '+response.body);
      setState(() {
        this._list = json.decode(response.body)["result"];
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  _postData() async{
    var url = "";
    Map map = {
      'username':'张三',
      'age':'20'
    };
    var response = await http.post(url,body:map);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  _diogetData() async{
    var url = "http://a.itying.com/api/productlist";
    Response response = await Dio().get(url);
    print(response.data);
    setState(() {
      this._list = response.data["result"];
    });
  }

  _diopostData() async{
    var url = "";
    Map map = {
      'username':'张三',
      'age':'20'
    };
    Response response = await Dio().post(url,data: map);
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDataPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('get请求'),
            onPressed: (){
              _getData();
            },
          ),
          RaisedButton(
            child: Text('post请求'),
            onPressed: (){
              _postData();
            },
          ),
          RaisedButton(
            child: Text('Dioget请求'),
            onPressed: (){
              _diogetData();
            },
          ),
          RaisedButton(
            child: Text('Diopost请求'),
            onPressed: (){
              _diopostData();
            },
          ),
          Container(
            height: 500.0,
            width: double.infinity,
            color: Colors.yellow,
//            child:  this._list.length>0?ListView(
//              children: this._list.map((value){
//                return ListTile(
//                  title: Text(value["title"]),
//                );
//              }).toList(),
//            ):Text("加载中"),
            child:  this._list.length>0?ListView.builder(
              itemCount: this._list.length,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text("${this._list[index]["title"]}"),
                  );
                }
            ):Text("加载中"),
          ),
        ],
      ),
    );
  }
}
