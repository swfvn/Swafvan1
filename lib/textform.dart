import 'package:flutter/material.dart';
void main(){
  runApp(Passw());
}
class Passw extends StatefulWidget {
  const Passw({super.key});

  @override
  State<Passw> createState() => _PasswState();
}

class _PasswState extends State<Passw> {
  final _formkey =GlobalKey<FormState>();
  TextEditingController _usernameController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  TextEditingController _textfeoild=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("abcdefg"),
        ),
        body: Form(
            key: _formkey,
            child:Column(

                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(labelText: "Username"),
                  validator: (value) {
                    if (value ==null || value.isEmpty) {
                      return "please enter your username";

                    }
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: "password"),
                  validator: (value) {
                    if (value==null || value.isEmpty) {
                      return"enter your password";
                    }
                    else if( value.length<8){
                      return "password must be at least 8 characters";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: (){
                        if(_formkey.currentState!.validate()){
                          String username=_usernameController.text;
                          String password=_passwordController.text;
                        }
                      }, child:
                  Column(children: [
                    Text("Login")
                  ],)),
                )
              ],
            ) )

      ),
    );
  }
}
