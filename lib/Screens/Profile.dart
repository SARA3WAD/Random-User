import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  String image,name,email,location,city,state,gender;
   Profile({super.key,
  required this.image,
  required this.name,
  required this.email,
  required this.gender,
  required this.city,
  required this.state,
  required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              CircleAvatar(
                  backgroundImage: NetworkImage(image),
              radius: 50 ,),
              SizedBox(height: 30,),
              Text(name,style: TextStyle(
                 fontSize: 25,
                 color: Colors.black
              ),),
              SizedBox(height: 20,),
              Text(email,style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
              ),),
              SizedBox(height: 20,),
              Text(gender,style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
              ),),
              SizedBox(height: 20,),
              Text(city,style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
              ),),
              SizedBox(height: 20,),
              Text(state,style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
              ),),
              SizedBox(height: 20,),
              Text(location,style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
