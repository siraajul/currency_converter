import 'package:flutter/cupertino.dart';

class HomePageCupertino extends StatefulWidget {
  const HomePageCupertino({super.key});

  @override
  State<HomePageCupertino> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<HomePageCupertino> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 114;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

//---------------------------------------Page Entry-----------------------------
    return CupertinoPageScaffold(
      //navigationBar(AppBar)
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          'Currency Converter',
        ),
      ),
      backgroundColor: CupertinoColors.systemGrey3,
      //Body Starts From Here
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              maxLines: 1,
              '৳${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Enter Your Amount in USD',
                prefix: const Icon(
                  CupertinoIcons.money_dollar_circle,
                  color: CupertinoColors.black,
                  size: 25,
                ),
              ),
            ),
            //Button------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(10),
              child: CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
