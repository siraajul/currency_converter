import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //1. Create a Value that stores the converted currency value
  //2. Create a function that multiplies the value give by the textfield with BDT
  //3. Store the value in the variable that we created
  //4. Display the variable

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
        Radius.circular(10),
      ),
    );
//---------------------------------------Page Entry-----------------------------
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                keyboardType: TextInputType.numberWithOptions(
                    decimal: true, signed: true),
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
            ),
            //Button
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  //Debug--Release, Profile

                  // print('Button Clicked');
                  if (kDebugMode) {
                    print('Button Clicked');
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
