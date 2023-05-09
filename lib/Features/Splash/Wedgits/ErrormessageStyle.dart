import 'package:flutter/material.dart';

class ErrormessageStyle extends StatelessWidget {
  const ErrormessageStyle({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(message,style: TextStyle(color:Colors.white,fontSize: 16),softWrap: true,),
      ),
    );
  }
}