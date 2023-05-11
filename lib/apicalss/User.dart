import 'package:http/http.dart'as http;
import 'dart:convert';
class User{
 static int currentPage=1;
 static int pageSize=10;
  static http.Response? _response;
  static Future<List<dynamic>> getUser()async{
    List<dynamic>userData=[];
 

     _response ??= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    if(_response!.statusCode==200){
      var jasonData=jsonDecode(_response!.body);
      print(jasonData.toString());
      userData.addAll(jasonData);

    }
    return userData;

  }

  static Future<List<String>>userPhoto()async{
   List<String> dataPhoto=[];

   if(_response==null|| currentPage>jsonDecode(_response!.body).length){
    _response ??= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos?_page=$currentPage&_limit=$pageSize'));
    currentPage++;

   }
   

    if(_response!.statusCode==200){
      var jasonData=jsonDecode(_response!.body);
       for(var data in jasonData){
        dataPhoto.add(data['thumbnailUrl']);
        print(data['thumbnailUrl']);
       }
       
      

    }
   

   return dataPhoto;

  }

 
}