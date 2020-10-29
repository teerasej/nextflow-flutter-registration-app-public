import 'package:flutter/material.dart';

class RegisterationPage extends StatefulWidget {
  RegisterationPage({Key key}) : super(key: key);

  @override
  _RegisterationPageState createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ลงทะเบียน'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ชื่อ'),
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              Text('นามสกุล'),
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              Text('Email:'),
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              Text('รูปถ่าย:'),
              Container(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 150,
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(
                      Icons.camera_alt,
                    ),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('ลงทะเบียน'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
