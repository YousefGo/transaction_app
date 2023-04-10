import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;

class Categories extends StatefulWidget {
  CategoriesState createState()=>CategoriesState();
}
class Category{
 int id ;
 String name;

 Category({
   required this.id ,
   required this.name
});
 factory Category.fromJson(Map<String,dynamic>json){
   return Category(id:json['id'],name:json['name']);
 }
}


class CategoriesState extends State<Categories>{


  late Future<List<Category>> futureCategories;
  Future<List<Category>> fetchCategories()async{
  http.Response response =  await
   http.get(
       Uri.parse('http://localhost/flutter-api/api/categories/')) ;// make request
   List categories = jsonDecode(response.body) ; // deconde reslut
  return categories.map((category)=>Category.fromJson(category)).toList();// convert to list
  }
  @override
  void initState(){
    super.initState();
    futureCategories = fetchCategories();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Categories clicked '),
        ),
        body:FutureBuilder<List<Category>>(
          future: futureCategories,
          builder: (context,snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                 itemCount: snapshot.data!.length,
                  itemBuilder: (context ,index){
                   Category category = snapshot.data![index];
                       return ListTile(
                         title: Text(category.name),
                       );
                  }

              );
            }else if (snapshot.hasError){
              return Text('Something went wrong');
            }
              return CircularProgressIndicator();
          })
        );
  }
  }









