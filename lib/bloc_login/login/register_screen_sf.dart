import 'package:flutter/material.dart';
import 'validation_mixin.dart';

class RegisterScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<RegisterScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String confirmpassword ='';
  String username ='';//Phone Number used

  Widget build(context) {
    return  Container(
            child: Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    phoneNumber(),
                    emailField(),
                    passwordField(),
                    // confirmpasswordField(),
                    Container(margin: EdgeInsets.only(top: 15.0)),
                    submitButton(),
                    
                  ],
                ),
              ),
            ),
          );

  }
  Widget phoneNumber() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        // labelText: 'Email Address',
        labelText: 'mobile number', icon: Icon(Icons.phone ),
        hintText: '25471001000',
      ),
      validator: validatePhone,
      onSaved: (String value) {
        username = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        // labelText: 'Email Address',
        labelText: 'email', icon: Icon(Icons.email ),
        hintText: 'you@example.com',
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        // labelText: 'Password',
        labelText: 'password', icon: Icon(Icons.security),
        hintText: 'Password',
      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

    Widget confirmpasswordField() {
    return TextFormField(
      decoration: InputDecoration(
        // labelText: 'Password',
        labelText: 'confirm password', icon: Icon(Icons.security),
        hintText: 'Confirm Password',
      ),
      validator: validatePassword,
      onSaved: (String value) {
        confirmpassword = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Time to post$username ,$email and $password to my API');
        }
      },
    );
  }
}
