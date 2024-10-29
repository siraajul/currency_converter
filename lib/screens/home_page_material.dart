import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(40),
      ),
    );
//---------------------------------------Page Entry-----------------------------
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              keyboardType:
                  TextInputType.numberWithOptions(decimal: true, signed: true),

              decoration: InputDecoration(
                hintText: 'Enter Your Amount in USD',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(
                  Icons.monetization_on_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
