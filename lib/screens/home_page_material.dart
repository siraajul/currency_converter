import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<HomePage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 114;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

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
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              maxLines: 1,
              '৳${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
                decoration: const InputDecoration(
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
            //Button------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: convert,
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
//-----------------------------------------------------------------------------
// class HomePagee extends StatelessWidget {
//   const HomePagee({super.key});
//
//   //--------To-Do--------------------
//   //1. Create a Value that stores the converted currency value
//   //2. Create a function that multiplies the value give by the textfield with BDT
//   //3. Store the value in the variable that we created
//   //4. Display the variable
//
//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();
//
//     const border = OutlineInputBorder(
//       borderSide: BorderSide(
//         color: Colors.black,
//         width: 2,
//         style: BorderStyle.solid,
//         strokeAlign: BorderSide.strokeAlignInside,
//       ),
//       borderRadius: BorderRadius.all(
//         Radius.circular(10),
//       ),
//     );
// //---------------------------------------Page Entry-----------------------------
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Currency Converter',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.blue,
//         elevation: 0,
//         centerTitle: true,
//       ),
//       backgroundColor: Colors.blue,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: const TextStyle(
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: textEditingController,
//                 style: const TextStyle(
//                   color: Colors.black,
//                 ),
//                 keyboardType: const TextInputType.numberWithOptions(
//                     decimal: true, signed: true),
//                 decoration: const InputDecoration(
//                   hintText: 'Enter Your Amount in USD',
//                   hintStyle: TextStyle(color: Colors.black),
//                   prefixIcon: Icon(
//                     Icons.monetization_on_outlined,
//                     color: Colors.black,
//                     size: 25,
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//               ),
//             ),
//             //Button------------------------------------------------------------
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextButton(
//                 onPressed: () {
//                   //Debug--Release, Profile
//                   // print('Button Clicked');
//                   // if (kDebugMode) {
//                   //   print('Button Clicked');
//                   // }
//                   // print(textEditingController.text);
//                   // print(double.parse(textEditingController.text) * 114);
//                   result = double.parse(textEditingController.text) * 114;
//                 },
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   minimumSize: const Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: const Text('Convert'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
