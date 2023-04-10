import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('login'),
        ),
        body:
        Container(
            color: Theme.of(context).primaryColorDark,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [Card (
                  elevation: 8.0,
                  margin: EdgeInsets.only(left: 16 ,right: 16),
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child:
                      Column(
                        children: <Widget>[
                          TextField(
                            keyboardType:TextInputType.emailAddress,
                            decoration:InputDecoration(
                              labelText: 'Email',

                            ) ,
                          ),
                          TextField(
                            keyboardType:TextInputType.visiblePassword,
                            decoration:InputDecoration(
                              labelText: 'password',

                            ) ,
                          ),
                          ElevatedButton(
                            onPressed: () { print('Login '); },
                            child: Text('Login'),
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(36)),
                          ),
                         Padding(
                           padding: EdgeInsets.only(top:20)
                         ,child:  InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, '/register');
                           },
                           child: Text('Regsiter new User'),
                         ),)
                        ],


                      )

                  ),
                )])
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}








