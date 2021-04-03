import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        
       //scaffoldBackgroundColor: const Color(0xA7A7A7),
        primarySwatch: Colors.green,
      ),
      
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
          child: Text(
            'Lorn Sled',
             style: TextStyle(
               fontSize: 30.0,
               
            ),
            ),
        )),
        
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Connect with us',
                      style: TextStyle(
                          color: Colors.green[500],
                          fontWeight: FontWeight.w700,
                          fontSize: 45),
                    )),
                    SizedBox(height: 40),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 20,color: Colors.black,),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                       ),
                                       
                      
                      labelText: 'Email/phone number',
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: 20,color: Colors.black,),
                    )
                    ),
                    Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
                 SizedBox(height: 50),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(10),
                      ),
                      color: Colors.green[600],
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                        ),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                  SizedBox(height: 20),
                  FlatButton(
                  onPressed: (){ },
                  textColor: Colors.green[500],
                  highlightColor: Colors.green,
                  child: Text('Forgot Password ?',
                  style: TextStyle(fontSize: 20.0),
                  ),
                ),
                 SizedBox(height: 10),
                 Container(alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    
                    child: Text(
                      'Or Connect with',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        ),
                    )),
                    SizedBox(height: 10),
                 Container(
                  height: 50,
                     child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(100),
                      side: BorderSide(color: Colors.blue,)
                      ),
                       onPressed: () {},
                      child: Text(
                        'facebook',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                        ),
                        ),
                     )),
                       SizedBox(height: 10),
                  Container(
                  height: 50,
                     child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(100),
                      side: BorderSide(color: Colors.red[300],)
                      ),
                       onPressed: () {},
                      child: Text(
                        'Google',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                        ),
                        ),
                     )),
              ],
            ))));
  }
}