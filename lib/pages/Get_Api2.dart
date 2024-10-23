import 'package:demo/modals/UserModal.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;

class GetApi2 extends StatefulWidget {
  const GetApi2({super.key});

  @override
  State<GetApi2> createState() => _GetApi2State();
}

class _GetApi2State extends State<GetApi2> {
  List<UserModal> userList = [];

  Future<List<UserModal>> getUserApi()async{
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode== 200) {
      userList.clear();
      for (Map i in data) {
        userList.add(UserModal.fromJson(json));
      }
      return userList;
    }else{
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Api'),
        centerTitle: true,
      ),
      body: Column(children: [
          Expanded(
            child: FutureBuilder(
                future: getUserApi(),
                builder: (context , snapshot){
                  if(!snapshot.hasData){
                    return Text('Loading');
                  }else{
                    return ListView.builder(
                      itemCount: userList.length,
                        itemBuilder: (context , index){
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Card(
                            child: Column(
                              children: [
                                Text('Name'),
                                Text(userList[index].name.toString()),
                                Text(userList[index].username.toString())
                              ],
                            ),
                          ),
                        );
                    }
                    );
                  }
                }
            ),
          )
        ],
      )
    );
  }
}
