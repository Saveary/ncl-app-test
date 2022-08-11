import 'package:flutter_modular/flutter_modular.dart';
import 'package:ncl_coding_assessment/features/ships/ui/ship_page.dart';

class ShipsModule extends Module {
  static const routeName = "/ships";

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => const ShipPage(),
        )
      ];
}
