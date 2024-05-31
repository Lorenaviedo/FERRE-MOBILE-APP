// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter_app_ferresft/utils/Global.colors.dart';

//ignore must_be_inmutable
class ListText extends StatelessWidget {
  ListText({super.key});

  List<String> randomNames = [
    'Samuel',
    'Isabel',
    'Laura',
    'Jose',
    'Liz',
    'Andres',
    'Cristian',
    'Lorena',
    'Angelica',
    'Sebastian',
    'Natalia',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NAMES LIST'),
          backgroundColor: GlobalColors.primaryColor,
          titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        body: ListView.builder(
          itemCount: randomNames.length,
          itemBuilder: (BuildContext context, int index) {
            String itemTitle = 'List Item ${randomNames[index]}';
            final name = randomNames[index];
            return ListTile(
              title: Text(name),
              leading: const Icon(Icons.person_2_outlined),
              onTap: () {
                developer.log('Log me', name: name);
                var snackBar = SnackBar(content: Text('Tapped on $itemTitle'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            );
          },
        ));
  }
}
