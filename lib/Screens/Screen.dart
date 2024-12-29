import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random/Providers/RandomUserProvider.dart';
import 'package:random/Screens/Profile.dart';
import 'package:random/Widgets/RandomUserWidget.dart';
class Home extends StatelessWidget {
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Random User'),
        centerTitle: true,
      ),
      body: Consumer<RandomUserProvider>(builder: (context, value, child) {
        var object = value.randomUserModel;
        if(object == null){
          value.fetchdata();
          return Center(child: CircularProgressIndicator());
        }
        else{
          return ListView.builder(itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    Profile(
                        image: object.result[index]['picture']['large'],
                        name: object.result[index]['name']['first'],
                        email: object.result[index]['email'],
                        gender: object.result[index]['gender'],
                        city: object.result[index]['location']['city'],
                        state: object.result[index]['location']['state'],
                        location: object.result[index]['location']['street']['name'])
                  ,));
              },
              child: Customwidget(
                  image: object.result[index]['picture']['medium'],
                  first: object.result[index]['name']['first'],
                  last: object.result[index]['name']['last'],
                  email: object.result[index]['email']),
            );
          },itemCount: object.result.length,);
        }
      },),
    );
  }
}
