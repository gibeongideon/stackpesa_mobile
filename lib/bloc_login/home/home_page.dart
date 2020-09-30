import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_login/bloc_login/bloc/authentication_bloc.dart';
import 'package:bloc_login/wheel/games.dart';
// import 'package:bloc_login/bloc_login/login/login_form.dart';
// import 'package:bloc_login/bloc_login/repository/user_repository.dart';
// import 'package:bloc_login/bloc_login/login/bloc/login_state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('StackPesa | Home Hub'),
        actions: <Widget>[
          Center(
            child:Text('username'),

          ),
          
          RaisedButton(
            color: Color(0xEF52A5F5),
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context)
                  .add(LoggedOut());
            },
            shape: StadiumBorder(
              side: BorderSide(
                color: Colors.red,
                width: 1,
              ),
            ),
          ),
          
        ],
      ),
      body: Container(
        child: MyHomePage(),//Column(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        //     // Padding(padding: EdgeInsets.only(right: 5.0),
        //     // child: Text(
        //     //   'Welcome',
        //     //   style: TextStyle(
        //     //     fontSize: 14.0,
        //     //   ),
        //     // ),),
        //     Padding(
        //       padding: EdgeInsets.fromLTRB(4.0, 5.0, 0.0, 0.0),
        //       child: Container(
        //         // width: MediaQuery.of(context).size.width * 0.85,
        //         // height: MediaQuery.of(context).size.width * 0.16,
        //         child: RaisedButton(
        //           child: Text(
        //             'Logout',
        //             style: TextStyle(
        //               fontSize: 12,
        //             ),
        //           ),
        //           onPressed: () {
        //             BlocProvider.of<AuthenticationBloc>(context)
        //                 .add(LoggedOut());
        //           },
        //           shape: StadiumBorder(
        //             side: BorderSide(
        //               color: Colors.blue,
        //               width: 2,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Center(
        //       child:MyHomePage(),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
