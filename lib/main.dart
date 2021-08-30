import 'dart:convert';

import 'package:begining/Model/listData.dart';
import 'package:begining/Model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ListData listData = ListData();
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  void getData() async {
    Uri url = Uri.parse("https://reqres.in/api/unknown");
    var res = await http.get(url);
    var r = json.decode(res.body);
    setState(() {
      listData = ListData.fromJson(r);
    });
    print(listData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Text(model.page.toString()),
      //     Text(model.per_page.toString()),
      //     Text(model.total.toString()),
      //     Text(model.total_page.toString()),
      //   ],
      // ),
      body: listData.data == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: listData.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(listData.data[index].id.toString()),
                  title: Text(listData.data[index].name),
                  subtitle: Text(listData.data[index].color),
                  trailing: Text(listData.data[index].year.toString()),
                );
              },
            ),
    );
  }
}
