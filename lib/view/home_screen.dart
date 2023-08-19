import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:husnainproj/viewmodels/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    //created a instance of HomeViewModel Provider
    var prov=Provider.of<HomeViewModel>(context,listen: false);
    log("HomScreen Build Called)");

    int j=334;

    return Column(
      children: [
        Consumer<HomeViewModel>(
            builder: (BuildContext context, prov, Widget? child) {
              return Text('${prov.a}');
            }
            ),
        ElevatedButton(onPressed: (){

          prov.a=3;

          log("Value: $j ${prov.a}");


        }, child: const Text('ADD By 1'))
      ],
    );
  }
}
