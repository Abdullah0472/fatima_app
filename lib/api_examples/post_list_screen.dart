import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/post_models.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({Key? key}) : super(key: key);

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  List<PostModel> postlist=[];
  Map<String,dynamic> jsonResponse={
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto",
  };
  Future<List<PostModel>> getPosts()async{
    //1-convert URL to Uri
    Uri uri=Uri.parse("https://jsonplaceholder.typicode.com/posts");
    //2-Use Uri to call Api
    http.Response response=await http.get(uri);
    //3-Decode Response body
    var decodebody=jsonDecode(response.body) as List;
    PostModel obj=PostModel.fromJson(jsonResponse);
    //4-Loop for json List to Model list
    for(int i=0;i<decodebody.length;i++){
      PostModel obj=PostModel.fromJson(decodebody[i]);
      postlist.add(obj);
    }
    //5-setstate
    setState(() {});
    // var list=List<PostModel>.from(decodebody.map((e) => PostModel.fromJson(e)));
    return postlist;
  }
  Future<http.Response> getAlbum()async{
    Uri urialbum=Uri.parse("https://jsonplaceholder.typicode.com/albums");
    http.Response reponsealbum=await http.get(urialbum);
    print("Album response status code");
    print(reponsealbum.statusCode);
    print("Album response body");
    print(reponsealbum.body);
    return reponsealbum;
  }
  Future<http.Response> getComments()async{
    Uri uricomments=Uri.parse("https://jsonplaceholder.typicode.com/comments");
    http.Response responsecomments=await http.get(uricomments);
    print("Comments response statuscode");
    print(responsecomments.statusCode);
    print("Comments response body");
    print(responsecomments.body);
    return responsecomments;
  }
  Future<http.Response> getphotos()async{
    Uri uriphotos=Uri.parse("https://jsonplaceholder.typicode.com/photos");
    http.Response responsephotos=await http.get(uriphotos);
    print("Photos Response Status Code");
    print(responsephotos.statusCode);
    print("Photos response body");
    print(responsephotos.body);
    return responsephotos;
  }
  Future<http.Response> gettodos()async{
    Uri uritodos=Uri.parse("https://jsonplaceholder.typicode.com/todos");
    http.Response responsetodos=await http.get(uritodos);
    print("Todos response status Code");
    print(responsetodos.statusCode);
    print("Todos response Body");
    print(responsetodos.body);
    return responsetodos;
  }
  Future<http.Response> getusers()async{
    Uri uriusers=Uri.parse("https://jsonplaceholder.typicode.com/users");
    http.Response responseusers=await http.get(uriusers);
    print("Users Response status code");
    print(responseusers.statusCode);
    print("Users list body");
    print(responseusers.body);
    return responseusers;

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var resgetpost=getPosts();
    var resgetalbum=getAlbum();
    var resgetcomments=getComments();
    var resgetphotos=getphotos();
    var resgrttodos=gettodos();
    var regetusers=getusers();
  }
  @override
  Widget build(BuildContext context) {
    // PostModel obj=PostModel.fromJson(jsonResponse);
    return Scaffold(
      body:postlist.isEmpty?Center(child: CircularProgressIndicator()): ListView.builder(
        itemCount: postlist.length,
          itemBuilder: (context,int index){
        return ListTile(
          title: Text(postlist[index].title),
          subtitle:Text(postlist[index].body) ,
        );
        // return ListTile(
        //   title: Text(obj.title),
        //   subtitle: Text(obj.body),
        // );
        // return ListTile(
        //   title: Text(jsonResponse["title"]),
        //   subtitle: Text(jsonResponse["body"]),
        // );
      }),
    );
  }
}