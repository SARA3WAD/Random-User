class RandomUserModel{
  List<dynamic>result;
  RandomUserModel({required this.result});
  factory RandomUserModel.fromjson(Map<String,dynamic>json){
      return RandomUserModel(result: json['results']);
  }
}