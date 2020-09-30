// import 'package:bloc_login/bloc_login/login/register_form.dart';
import 'package:flutter/material.dart';
import 'package:bloc_login/bloc_login/login/register_screen_sf.dart';



class RegisterPage extends StatelessWidget {


  // RegisterPage(Key key, )
      // : assert(userRepository != null),
        // super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(

              title: Text('Register | StackCash'),
            ),
            body: RegisterScreen(),
         );
        }
        
    
}




