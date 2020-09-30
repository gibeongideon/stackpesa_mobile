// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:bloc_login/bloc_login/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// class RegisterForm extends StatefulWidget {
//   @override
//   State<RegisterForm> createState() => _RegisterFormState();
// }

// class _RegisterFormState extends State<RegisterForm> {
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     // _onLoginButtonPressed() {
//     //   BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(
//     //     username: _usernameController.text,
//     //     password: _passwordController.text,
//     //   ));
//     // }

//     return BlocListener<LoginBloc, LoginState>(
//       listener: (context, state) {
//         if (state is LoginFaliure) {
//           Scaffold.of(context).showSnackBar(SnackBar(
//             content: Text('${state.error}'),
//             backgroundColor: Colors.red,
//           ));
//         }
//       },
//       child: BlocBuilder<LoginBloc, LoginState>(
//         builder: (context, state) {
//           return Container(
//             child: Form(
//               child: Padding(
//                 padding: EdgeInsets.all(40.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'username', icon: Icon(Icons.person)),
//                       controller: _usernameController,
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(
//                           labelText: 'password', icon: Icon(Icons.security)),
//                       controller: _passwordController,
//                       obscureText: true,
//                     ),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.85,
//                       height: MediaQuery.of(context).size.width * 0.22,
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 30.0),
//                         child: RaisedButton(
//                           onPressed: state is! LoginLoading
//                               ? _onLoginButtonPressed
//                               : null,
//                           child: Text(
//                             'Login',
//                             style: TextStyle(
//                               fontSize: 24.0,
//                             ),
//                           ),
//                           shape: StadiumBorder(
//                             side: BorderSide(
//                               color: Colors.black,
//                               width: 2,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       child: state is LoginLoading
//                           ? CircularProgressIndicator()
//                           : null,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }






class RegisterForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyCounterModel>(
      create: (context) => MyCounterModel(),


      child:Consumer<MyCounterModel>(
        builder: (context,myCounterModel,child){
          return Container(
            child: Form(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //       labelText: 'username', icon: Icon(Icons.person)),
                    //   // controller: _usernameController,
                    // ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'phone number', icon: Icon(Icons.phone )),
                      // controller: _usernameController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'password', icon: Icon(Icons.security)),
                      // controller: _passwordController,
                      obscureText: true,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Confirm Password', icon: Icon(Icons.security)),
                      // controller: _passwordController,
                      obscureText: true,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.width * 0.15,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: RaisedButton(
                          color:Colors.red,
                          onPressed: null,// state is! LoginLoading
                              // ? _onLoginButtonPressed
                              // : null,
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 18.0,
                              color:Colors.blue,
                            ),
                          ),
                          shape: StadiumBorder(
                            side: BorderSide(
                              color: Colors.yellow,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        //   return Scaffold(
        //     // appBar: AppBar(

        //     //   title: Text('Provide Count'),
        //     // ),
        //     body: Center( 
              
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: <Widget>[
        //           Text(
        //             'You have pushed the button this many times:',
        //           ),
        //           Text(
        //             '${myCounterModel.counter}',
        //             style: Theme.of(context).textTheme.display1,
        //           ),
        //           Container(height: 10,),

            
        //         FloatingActionButton(
        //             onPressed: myCounterModel.incrementCounter,
        //             tooltip: 'Increment',
        //             child: Icon(Icons.add),
        //       ),

        //       // Container(height: 5,),
        //       //   FloatingActionButton(
        //       //       onPressed: myCounterModel.decrementCounter,
        //       //       tooltip: 'Increment',
        //       //       child: Icon(Icons.remove),
        //       //   ),
        //         ],
        //       ),
        //     ),
        //  );
        },
        
        ),
    
      
      
      );

    
  }
}


class MyCounterModel extends ChangeNotifier {

  int  counter = 0;

  void incrementCounter() {
    counter += 1;
   // print(counter);
    notifyListeners();
    
    }


  void decrementCounter() {
    counter -= 1;
   // print(counter);
    notifyListeners();
    
    }


}