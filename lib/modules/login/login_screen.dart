import 'package:flutter/material.dart';

class logScreen extends StatelessWidget {
  var valueLogin = TextEditingController();
  var valuePassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My firist App')),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit))],
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'log in',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: valueLogin,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'email address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: valuePassword,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      //iconColor: Color(Colors.teal),
                      labelText: 'password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 45,
                    color: Colors.blueGrey,
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {
                        print(valueLogin.text);
                        print(valuePassword.text);
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Don\'t have an account '),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'new account',
                            style: TextStyle(color: Colors.black26),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
