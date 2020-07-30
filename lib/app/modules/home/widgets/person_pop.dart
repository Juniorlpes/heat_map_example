import 'package:flutter/material.dart';

Future<String> requestPersonPop(BuildContext context){
  var textController = TextEditingController();

  return showDialog<String>(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: Text('Person'),
      content: TextField(
        controller: textController,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'insert your name'
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          child: Text('Cancel',
            style: TextStyle(color: Colors.red),
          )
        ),
        FlatButton(
          onPressed: (){
            Navigator.pop(context, textController.text);
          }, 
          child: Text('Confirm')
        ),
      ],
    )
  );
}