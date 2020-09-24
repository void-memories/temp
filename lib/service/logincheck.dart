import 'package:flutter/material.dart';

class LoginCheck extends StatefulWidget {
  final name,dpUrl,email,uid,mob,loginObject;

  const LoginCheck({Key key, this.name, this.dpUrl, this.email, this.uid, this.mob, this.loginObject}) : super(key: key);
  @override
  _LoginCheckState createState() => _LoginCheckState();
}

class _LoginCheckState extends State<LoginCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: Column(
          children: <Widget>[
            Image.network(widget.dpUrl),
            Text(widget.name!=null?widget.name:""),
            Text(widget.email!=null?widget.uid:""),
            Text(widget.email!=null?widget.email:""),
            Text(widget.mob!=null?widget.mob:""),
            FlatButton(onPressed: (){
              widget.loginObject.signOut();
              Navigator.pop(context);
            }, child: Text('Log Out'))
          ],
        ),
      ),
    );
  }
}