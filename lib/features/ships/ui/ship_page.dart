import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ncl_coding_assessment/features/ships/ships_bloc.dart';
import 'package:ncl_coding_assessment/features/ships/ships_view_model.dart';

class ShipPage extends StatefulWidget {
  const ShipPage({Key? key}) : super(key: key);

  @override
  State<ShipPage> createState() => _ShipPageState();
}

class _ShipPageState extends State<ShipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NCL TEST'),
      ),
      body: StreamBuilder(
        stream: Modular.get<ShipsBloc>().shipViewModelPipe.stream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            final ShipsViewModel shipsViewModel = snapshot.data as ShipsViewModel;
            return Column(
              children: [
                TextButton(
                  onPressed: () {
                    getSkyInformation();
                  },
                  child: const Text(
                    'SKY',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'BLISS',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'ESCAPE',
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

Future getSkyInformation() {
  Dio dio = Dio();

  dynamic response = dio.get('https://www.ncl.com/cms-service/cruise-ships/SKY');

  dynamic decodedJson = json.decode(response);

  print(decodedJson);

  return decodedJson;
}
