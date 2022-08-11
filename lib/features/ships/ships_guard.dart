import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:ncl_coding_assessment/features/ships/ships_module.dart';

class ShipsGuard extends RouteGuard {
  ShipsGuard() : super(redirectTo: ShipsModule.routeName);

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) async {
    // TODO: implement canActivate
    throw UnimplementedError();
  }
}
