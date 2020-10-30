import 'package:demo_registation/models/profile.dart';
import 'package:flutter/material.dart';

class RegisterationPage extends StatefulWidget {
  RegisterationPage({Key key}) : super(key: key);

  @override
  _RegisterationPageState createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  final _formKey = GlobalKey<FormState>();
  Profile _profile = Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ลงทะเบียน'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ชื่อ'),
                TextFormField(
                  onSaved: (String firstName) {
                    _profile.firstName = firstName;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text('นามสกุล'),
                TextFormField(
                  onSaved: (String lastName) {
                    _profile.lastName = lastName;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Email:'),
                TextFormField(
                  onSaved: (String email) {
                    _profile.email = email;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text('รูปถ่าย:'),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Ink(
                    color: Colors.grey[300],
                    child: InkWell(
                      onTap: () {
                        print('open camera');
                      },
                      child: Container(
                        height: 150,
                        child: Center(
                          child: Icon(
                            Icons.camera_alt,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      _formKey.currentState.save();

                      print('Form data saved.');
                      print(
                        '${_profile.firstName} ${_profile.lastName} ${_profile.email}',
                      );
                    },
                    child: Text('ลงทะเบียน'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
