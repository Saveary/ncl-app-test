import 'package:flutter_modular/flutter_modular.dart';
import 'package:ncl_coding_assessment/features/ships/ships_bloc.dart';
import 'package:ncl_coding_assessment/main.dart';
import 'package:ncl_coding_assessment/features/ships/ui/ship_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => ShipsBloc(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/home', child: (context, args) => const HomePage()),
        ChildRoute('/ships', child: (context, args) => const ShipPage()),
      ];
}
