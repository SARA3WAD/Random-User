import 'package:flutter/cupertino.dart';
import 'package:random/Models/RandomUserModel.dart';
import 'package:random/Services/RandomUserServices.dart';

class RandomUserProvider with ChangeNotifier{
    RandomUserModel? randomUserModel;
    Future<void>fetchdata()async{
      randomUserModel = await RandomUserServices.Getdata();
      notifyListeners();
    }
}