import 'package:dio/dio.dart';
import 'package:random/Models/RandomUserModel.dart';

class RandomUserServices{
  static Dio dio = Dio();
  static Future<RandomUserModel> Getdata() async{
    try{
      Response response = await dio.get('https://randomuser.me/api/?results=5000');
      if(response.statusCode == 200){
        return RandomUserModel.fromjson(response.data);
      }
      else{
        throw Exception('Errorr');
      }
    }
    catch(s){
      throw Exception(s);
    }
  }
}