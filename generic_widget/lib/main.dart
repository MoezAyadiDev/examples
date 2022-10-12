import 'package:flutter/material.dart';
import 'package:generic_widget/dropdown_button.dart';
import 'package:generic_widget/langue.dart';
import 'package:generic_widget/currency.dart';

void main() {
  runApp(const GenericWidget());
}

class GenericWidget extends StatelessWidget {
  const GenericWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Currency> currencies = const [
      Currency(id: 1, symbole: 'EUR'),
      Currency(id: 2, symbole: 'USD'),
      Currency(id: 3, symbole: 'GPB'),
    ];
    List<Langue> langues = const [
      Langue(id: 1, langue: 'English'),
      Langue(id: 2, langue: 'Frensh'),
      Langue(id: 3, langue: 'Chineese'),
    ];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GenericDropDownButton<Currency>(
              list: currencies,
              selectedValue: null,
              callBack: (Currency? selectedItem) {
                print('new selected currency : ${selectedItem?.itemValue()}');
              },
            ),
            const SizedBox(height: 30),
            GenericDropDownButton<Langue>(
              list: langues,
              selectedValue: langues[1],
              callBack: (Langue? selectedItem) {
                print('new selected langue : ${selectedItem?.itemValue()}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
