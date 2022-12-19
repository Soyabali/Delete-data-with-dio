import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                delteteData();
              }, child: const Text("delete Data"))
            ],
          ),
        ),
      ),
    );
  }
}
void delteteData() async{
  var dio = Dio();
  var response = await dio.patch("https://jsonplaceholder.typicode.com/posts/1");
  var response2 = await dio.delete("https://jsonplaceholder.typicode.com/posts/1");
  print('RESPONSE FIRST API ...${response.data}');
  print('Response SEcond Api ...${response2.data}');
}