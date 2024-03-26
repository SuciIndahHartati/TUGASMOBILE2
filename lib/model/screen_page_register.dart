import 'package:flutter/material.dart';
import 'package:tugas_mobile_2/model/RegisterResponse.dart';
 
class ScreenPageRegister extends StatefulWidget {
  @override
  State<ScreenPageRegister> createState() => _ScreenPageRegisterState();
}

class _ScreenPageRegisterState extends State<ScreenPageRegister> {
  RegisterResponse? registerResponse = null;
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
    title: Text('Register Screen'),
    ), //AppBar
    body: Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10,),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration( 
                hintText: 'Enter your name', 
                labelText: 'Name',
                border: OutlineInputBorder(),
                ), //Inputdecoration
              ), //TextField
              SizedBox(height: 10),
              TextField(
                controller: jobController,
                decoration: InputDecoration( 
                hintText: 'Enter your job',
                 labelText: 'job',
                border:OutlineInputBorder(),
                ), //InputDecoration
              ), //TextField
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom( backgroundColor: Colors.red,
                 ),
                 onPressed: () {
                 RegisterResponse.connectToAPI(
                          nameController.text, jobController.text)
                      .then((value) {
                    registerResponse = value;
                    setState(() {} );
                  });
                 },
                 child: Text('submit'),
             ), //ElevatedButton
          ), //Container
          SizedBox(height: 10),
          Text(registerResponse == null
              ? 'No Data'
              : registerResponse!.id +
                  ' | ' +
                  registerResponse!.name +
                  ' | ' +
                  registerResponse!.job +
                  ' | ' +
                  registerResponse!.createdAt) //Text
            ],
          ), //column
        ), //Container
      ],
    ), //column
    ); //Scaffold 
}
}
