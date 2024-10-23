import 'package:demo/modals/UserModal.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;

class GetApi1 extends StatefulWidget {
  const GetApi1({super.key});

  @override
  State<GetApi1> createState() => _GetApi1State();
}

class _GetApi1State extends State<GetApi1> {
  
  List<UserModal> userList = [];
  
  Future<List<UserModal>> getUserApi()async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map i in data){
        userList.add(UserModal.fromJson(i));
      }
      return userList;
    }
    return userList;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getUserApi(),
                builder:( context,snapshot){
                  if(!snapshot.hasData){
                    return Text('Loading');
                  }else{
                  return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context,index) {
                    return Text(userList[index].name.toString());
                  }
                );
            
                }
                }
                ),
          )
        ],
      ),
    );
  }
}
